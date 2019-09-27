<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    


<div class="row">
  <div class="col-3" id="myTab">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
      <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
      <a class="nav-link" id="messages-tab" data-toggle="tab" href="#messages" role="tab" aria-controls="messages" aria-selected="false">Messages</a>
      <a class="nav-link" id="settings-tab" data-toggle="tab" href="#settings" role="tab" aria-controls="settings" aria-selected="false">Settings</a>
    </div>
  </div>
  <div class="col-9">
    <div class="tab-content" id="v-pills-tabContent">
      <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="v-pills-home-tab" >...</div>
      <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="v-pills-profile-tab"  >...</div>
      <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" >...</div>
      <div class="tab-pane fade" id="settings" role="tabpanel" aria-labelledby="v-pills-settings-tab" >...</div>
    </div>
  </div>
</div>



<script>
$('#myTab a').on('click', function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})
	
$('#myTab a[href="#profile"]').tab('show') // Select tab by name
$('#myTab li:first-child a').tab('show') // Select first tab
$('#myTab li:last-child a').tab('show') // Select last tab
$('#myTab li:nth-child(3) a').tab('show') // Select third tab	
</script>
