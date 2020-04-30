---
layout: page
title: Sprints
---

## Sprint Artifacts

{% capture column_title %}
    <tr>
      <th>Sprint</th>
      <th>End Date</th>
      <th>Review Date</th>
      <th>Slides</th>
      <th>Recording</th>
    </tr>
{% endcapture %}

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    {{ column_title }}
    {% for artifact in site.data.sprint_artifacts %}
    <tr>
       <td>{{ artifact.number }}</td>
       <td>{{ artifact.end_date     | date: "%B %e, %Y" }}</td>
       <td>{{ artifact.review_date  | date: "%B %e, %Y" }}</td>
       <td><a href="{{ artifact.slides }}">Slides</a></td>
       <td><a href="{{ artifact.recording }}">Recording</a></td>
    </tr>
    {% endfor %}
  </table>
</div>

<p>Slide Decks from previous sprint reviews can be found on <a href="https://www.slideshare.net/ManageIQ">SlideShare</a></p>
<p>Recordings of previous sprint reviews can be found on the <a href="https://www.youtube.com/channel/UCrEhyZG3rr5o0IMH9A5PLSQ">ManageIQ YouTube Channel</a></p>
