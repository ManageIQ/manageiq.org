---
title: API Contributor's Guide
author: jntullo
date: 2017-10-25
tags: collaboration developers tutorials
comments: true
published: true
---

The API has been growing quickly thanks to our many contributors. In an effort to help new contributors get up to speed quickly, it was about time for a blog post to explain the process of adding in a new collection and subcollection, as well as provide some examples for commonly asked questions.

The [api.yml](https://github.com/ManageIQ/manageiq-api/blob/4811ec9fcea2424a585560a761e05d56c53535f8/config/api.yml) is where a lot of the magic :sparkles: happens. The best way to explain it is through an example, so let's walk through adding in a new collection and subcollection.

We'll keep the example generic through the creation of a `Coffee` API. Because who doesn't need more :coffee: in their life?

## Defining a new collection with basic CRUD
The new `Coffee` collection will need to be defined under [collections](https://github.com/ManageIQ/manageiq-api/blob/4811ec9fcea2424a585560a761e05d56c53535f8/config/api.yml#L37) in the `api.yml`. Note that all of the collections are in alphabetical order. 
The collection will need to return details about the coffee, update them if they need some more sugar, create new ones (Pumpkin, anyone?), and delete any we're not a fan of - basic CRUD. 

Here is a glimpse into what adding the new collection with basic CRUD will look like:
```
:collections:
    :coffees:
        :description: Coffee
        :options: 
        - :collection
        :verbs: *gpd
        :klass: Coffee
        :collection_actions:
            :get: 
            - :name: read
              :identifier: coffee_show_list 
            :post:
            - :name: create
              :identifier: coffee_new 
            - :name: edit
              :identifier: coffee_edit 
            - :name: delete
              :identifier: coffee_delete
        :resource_actions:
            :get:
            - :name: read
              :identifier: coffee_show 
            :post:
            - :name: edit
              :identifier: coffee_edit 
            - :name: delete
              :identifier: coffee_delete
            :delete:
            - :name: delete
              :identifier: coffee_delete
```


Below is a breakdown of what some of the above elements mean:
* **:coffees:**
    * Defines the collection or subcollection portion of the URI in conjunction with the name and supported verbs (in our case, `GET api/coffee`, `POST /api/coffee`, etc..)
    * Tells the API that the controller will be `CoffeesController`
* **:options:**
    * Gives more details about the collection and whether it will act as a collection, subcollection
* **:verbs:**
    * Specifies the [verb set](https://github.com/ManageIQ/manageiq-api/blob/4811ec9fcea2424a585560a761e05d56c53535f8/config/api.yml#L18-L36) that can be used on the collection
* **:klass:** 
    * Specifies the base class name of the resources under this collection 
* **:name:**
    * Name of the action to be performed 
* **:identifier:**
    * Name of the corresponding [product feature](https://github.com/ManageIQ/manageiq/blob/f77c75b4659f97be95f8976ef58abe521085c963/db/fixtures/miq_product_features.yml), which is used to control permissions to resources
* **:collection_actions:** vs **:resource_actions:**
    * Collection actions correspond to those against the collection `/api/coffee` and resource actions are those corresponding to a single resource `/api/coffee/:c_id`
 
Through the above definition, the following endpoints and actions were created:
```
GET /api/coffee
GET /api/coffee/:c_id

POST /api/coffee
POST /api/coffee { "action": "edit" }
POST /api/coffee { "action": "delete" }
POST /api/coffee/:c_id { "action": "edit" } 
POST /api/coffee/:c_id { "action": "delete" } 

DELETE /api/coffee/:c_id
```
### **Where are the methods?**
Now that the routes exist, let's take care of the methods. Once the new collection has been added to the `api.yml`, the corresponding controller needs to be [created here](https://github.com/ManageIQ/manageiq-api/tree/4811ec9fcea2424a585560a761e05d56c53535f8/app/controllers/api). The controller will look something like:
```
module Api
  class CoffeesController < BaseController 
  end 
end 
```
Because the `CoffeesController` inherits from the `BaseController`, a lot of what has been defined in the `api.yml` will already work :sparkles:. The [Base Controller](https://github.com/ManageIQ/manageiq-api/blob/4811ec9fcea2424a585560a761e05d56c53535f8/app/controllers/api/base_controller.rb) holds the action methods (`#show`, `#index`, `#update`, `#destroy`) that will be called if they are not overridden in the `CoffeesController`.
## Custom Resource Actions
Once basic CRUD is established, what good is seeing a coffee if you can't order one? A custom resource action is the solution for that. In traditional REST, this would be solved via `POST /api/coffee/:c_id/order`. We instead use actions, `POST /api/coffee/:c_id { "action": "order" }`
 
With the new order action, the `:resource_actions:` section will look as follows: 
```
        :resource_actions:
            :get:
            - :name: read
              :identifier: coffee_show 
            :post:
            - :name: edit
              :identifier: coffee_edit 
            - :name: delete
              :identifier: coffee_delete
            - :name: order
              :identifier: coffee_order 
            :delete:
            - :name: delete
              :identifier: coffee_delete
```

Since ordering a coffee isn't a basic CRUD action handled by the generic methods, that will need to be defined in the `CoffeesController`:
```ruby
module Api
  class CoffeesController < BaseController
    def order_resource(type, id, data)
      coffee = resource_search(id, type, collection_class(type))
      coffee.order(data)
    rescue => err
      raise BadRequestError, "Coffee not ordered - #{err}"
    end 
  end 
end 
```
The above example demonstrates a couple of the basic methods and formats that you'll see used throughout the API.
* `order_resource(type, id, data)`
    * This is the normal method signature for a resource action, `<action>_resource`. You can see the target method being generated [here](https://github.com/ManageIQ/manageiq-api/blob/e9a142a2c4d55d8d0dc18d2e342cdfef251d37bf/app/controllers/api/base_controller/manager.rb#L80-L88) and being called [here](https://github.com/ManageIQ/manageiq-api/blob/e9a142a2c4d55d8d0dc18d2e342cdfef251d37bf/app/controllers/api/base_controller/manager.rb#L10).
* `collection_class(type)`
    * Based off of the `type` of request (in this case, `:coffee`), it will return the `klass` defined in the `api.yml` (`Coffee`).
* `resource_search(id, type, class)`
    * Resource search will return the resource corresponding to the ID that was requested, or return a `NotFoundError` if it was not found.
    * Resource search is used as opposed to a simple `Coffee.find(id)` because the results are filtered through access control, ensuring nobody is working with a resource they don't have permissions for.
* data
    * The data input is the request body that was passed in with the order request. I like my coffee `{"cream": false, "sugar": false}`, so that is the request body that would be passed to my order.

## Subcollections
Oftentimes, we need subcollections on a resource to return child resources. Coffee is great by itself, but it's even better with donuts. And it's your lucky day - every coffee has a set of donuts picked to pair perfectly with it. Sounds like the perfect job for a subcollection. 

Although the Donuts could also be a collection (they can still be enjoyed on their own), this example will only outline the subcollection actions for reading and deleting them. 
```
    :donuts:
        :description: Donuts
        :options: 
        - :subcollection
        :verbs: *gp
        :klass: Donut
        :subcollection_actions:
            :get: 
            - :name: read
              :identifier: donut_show_list 
            :post:
            - :name: delete
              :identifier: donut_delete
        :subresource_actions:
            :get:
            - :name: read
              :identifier: coffee_show 
            :post:
            - :name: delete
              :identifier: coffee_delete
```
The above configuration is very similar to that of a collection, only it defines `:subcollection_actions:` and `:subresource_actions:`. The coffee options will also need to be updated to include the Donuts subcollection:
```
    :coffees:
        :description: Coffee
        :options: 
        - :collection
        :verbs: *gpd
        :klass: Coffee
        :subcollections:
        - :donuts
```

Subcollection actions are defined in [modules](https://github.com/ManageIQ/manageiq-api/tree/4811ec9fcea2424a585560a761e05d56c53535f8/app/controllers/api/subcollections) and included in the collection controller they are a subcollection of. 

Below is a simple example of what the `Donuts` module would look like:
```
module Api
  module Subcollections
    module Donuts
      def donuts_query_resource(object)
        object.donuts
      end
      
      def donuts_delete_resource(_object, type, id, data)
        delete_resource(type, id, data)
      end
  end
end
```
In the above example, the `object` passed to the `donuts_query_resource` will be the `Coffee` object that the donuts are being queried on (the parent resource to the donuts).

The two method signatures `donuts_query_resource(object)` and `donuts_delete_resource(object, type, id, data)` are the normal naming conventions for subcollection actions, `<subcollection name>_<action>_resource`. Like the collection, you can see the target method being generated [here](https://github.com/ManageIQ/manageiq-api/blob/e9a142a2c4d55d8d0dc18d2e342cdfef251d37bf/app/controllers/api/base_controller/manager.rb#L80-L88).

The `CoffeesController` then includes the `Donut` module as follows:
```
module Api
  class CoffeesController < BaseController
    include Subcollections::Donuts 
        
    def order_resource(type, id, data)
      coffee = resource_search(id, type, collection_class(type))
      coffee.order(data)
    rescue => err
      raise BadRequestError, "Coffee not ordered - #{err}"
    end 
  end 
end 
```

This subcollection now gives us the endpoints
```
GET /api/coffee/:c_id/donuts
GET /api/coffee/:c_id/donuts/:s_id

POST /api/coffee/:c_id/donuts/:s_id { "action": "delete" }
```

And just like that, our API now serves both :coffee: and donuts!

## Creating a PR
Small PRs are always easier to review, and this example would be broken down into two PRs - the Coffee CRUD PR and a Donuts subcollection PR. Examples in the PR description help reviewers to understand what was added, and also helps the users to get up to speed quickly! 
Here is a snippet of what we might include as an example for ordering a coffee:
```
POST /api/coffee/:id
{
    "action": "order",
    "cream": true,
    "sugar": false
}
```

## Questions and Examples
Below you'll find some common questions and example PRs to guide you through the development process.
* Should this be a subcollection?
    * One question seen frequently is how to determine whether something should be added as a collection, subcollection, or both. Is your resource something that you would not look at outside of the context of its parent object? If so, then a subcollection is likely the way to go.
* How are asynchronous tasks handled?
    * Action results are used when an action creates an asynchronous task, and returns the task information back to the user. For example, the [creation and deletion of Flavors](https://github.com/ManageIQ/manageiq-api/pull/14)
* Bulk actions
    * Action results are also used when performing bulk actions, such as [bulk tagging](https://github.com/ManageIQ/manageiq/pull/13581)
* Adding subcollections
    * Here is an example of taking a collection and making it into a [subcollection as well](https://github.com/ManageIQ/manageiq/pull/14002)
    * Adding a tag subcollection to a collection [is common](https://github.com/ManageIQ/manageiq-api/pull/64) 
* Additional attributes
    * Sometimes a resource may require additional attributes to be returned [by default](https://github.com/ManageIQ/manageiq-api/pull/126)
* Overriding the generic methods
    * In the event that your CRUD methods need to do something different than what the generic methods do, you can [override them](https://github.com/ManageIQ/manageiq-api/pull/15)
    

Hopefully this guide was helpful in getting you up to speed on how to contribute to the API. As always, feel free to reach out to us on [gitter](https://gitter.im/ManageIQ/api), and leave feedback so we can write more useful blogs in the future.

We look forward to seeing your incoming PRs!
