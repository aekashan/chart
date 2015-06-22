<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Design1ByMeFlower1.main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
<style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}</style>
  <meta charset="utf-8">
  <title>Materil | Responsive Web Admin App with AngularJS And Bootstrap</title>
  <meta name="description" content="material, material design, angular material, app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<%--    <link href="css/main/material-design-icons.css" rel="stylesheet" type="text/css" />  --%>
<%--    <link href="css/main/animate.css" rel="stylesheet" type="text/css" />--%>
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/main/loading-bar.css" rel="stylesheet" type="text/css" />
<%--    <link href="css/main/angular-material.css" rel="stylesheet" type="text/css" />--%>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<%--    <link href="css/main/app.css" rel="stylesheet" type="text/css" />--%>
    <link href="plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<%--  <script src="scripts/controllers/chart.js" async="">
  </script><script src="scripts/controllers/vectormap.js" async="">
  </script><script src="../libs/jquery/screenfull/dist/screenfull.min.js" async=""></script>--%>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><link rel="stylesheet" type="text/css" href="../libs/jquery/bower-jvectormap/jquery-jvectormap.css"></head>
<body ng-app="app" class="ng-scope">
  <!-- uiView:  --><div class="app ng-scope" ui-view="" ng-controller="AppCtrl">  <!-- aside -->
  <!-- uiView: aside@ --><md-sidenav id="aside" class="app-aside md-sidenav-left md-closed ng-scope ng-isolate-scope" ng-class="{'folded': app.setting.asideFolded || $state.current.data.folded}" ui-view="aside@" md-component-id="aside" tabindex="-1"><div class="box bg-white ng-scope">
  <div class="navbar md-whiteframe-z1 no-radius bg-white" ng-class="$state.current.data.theme ? $state.current.data.theme.primary : app.setting.theme.primary">
      <!-- brand -->
      <a class="navbar-brand">
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" enable-background="new 0 0 100 100" xml:space="preserve" style="
              width: 24px; height: 24px;">
            <path d="M 50 0 L 100 14 L 92 80 Z" fill="rgba(139, 195, 74, 0.5)"></path>
            <path d="M 92 80 L 50 0 L 50 100 Z" fill="rgba(139, 195, 74, 0.8)"></path>
            <path d="M 8 80 L 50 0 L 50 100 Z" fill="#f3f3f3"></path>
            <path d="M 50 0 L 8 80 L 0 14 Z" fill="rgba(220, 220, 220, 0.6)"></path>
          </svg>
        <img src="images/logo.png" alt="." style="max-height: 36px; display:none">
        <span class="hidden-folded m-l inline ng-binding">Materil</span>
      </a>
      <!-- / brand -->
  </div>
  <div class="box-row">
    <div class="box-cell scrollable hover">
      <div class="box-inner">
        <div class="p hidden-folded bg-white-50" ng-class="$state.current.data.theme ? $state.current.data.theme.primary+'-50' : app.setting.theme.primary+'-50'" style="background-image:url(images/bg.png); background-size:cover">
          <div class="rounded w-64 bg-white inline pos-rlt">
            <img src="images/a0.jpg" class="img-responsive rounded">
          </div>
          <a class="block m-t-sm" ui-toggle-class="hide, show" target="#nav, #account">
            <span class="block font-bold">John Smith</span>
            <span class="pull-right auto">
              <i class="fa inline fa-caret-down"></i>
              <i class="fa none fa-caret-up"></i>
            </span>
            john.smith@gmail.com
          </a>
        </div>
        <!-- ngInclude: 'views/partials/aside.nav.uikit.html' --><div id="nav" ng-include="'views/partials/aside.nav.uikit.html'" class="ng-scope"><nav ui-nav="" class="ng-scope">
  <ul class="nav">
    <li class="nav-header m-v-sm hidden-folded">
      UI Kits
    </li>
    
    <li ui-sref-active="active" class="">
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="pull-right up"><b class="badge no-bg">2</b></i>
        <i class="fa fa-dashboard"></i>
        <span class="font-normal">Dashboard</span>
      <div class="md-ripple-container"></div></a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active" class="">
          <a md-ink-ripple="" ui-sref="app.dashboard" href="#/app/dashboard">Dashboard</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="app.wall" href="#/app/wall">Wall</a>
        </li>
      </ul>
    </li>
    <li>
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="pull-right up"><b class="badge no-bg">3</b></i>
        <i class="fa fa-cube"></i>
        <span class="font-normal">Apps</span>
      </a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="app.note.list" href="#/app/note/list">Note</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="app.todo" href="#/app/todo">Todo</a>
        </li>
      </ul>
    </li>
    <li ng-class="{active:$state.includes('ui.component')}">
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="icon mdi-action-subject i-20"></i>
        <span class="font-normal">Components</span>
      </a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.arrow" href="#/ui/component/arrow">Arrow</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.badge-label" href="#/ui/component/badge-label">Badge &amp; Label</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.button" href="#/ui/component/button">Button</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.color" href="#/ui/component/color">Color</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.grid" href="#/ui/component/grid">Grid</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.icon" href="#/ui/component/icons">Icon</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.list" href="#/ui/component/list">List Group</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.nav" href="#/ui/component/nav">Nav</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.progressbar" href="#/ui/component/progressbar">Progressbar</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.streamline" href="#/ui/component/streamline">Streamline</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.timeline" href="#/ui/component/timeline">Timeline</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.component.uibootstrap" href="#/ui/component/uibootstrap">UI Bootstrap</a>
        </li>
      </ul>
    </li>
    <li ng-class="{active:$state.includes('ui.material')}" class="">
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="pull-right up"><b class="badge bg-success">14</b></i>
        <i class="icon mdi-image-flash-on i-20"></i>
        <span class="font-normal">Material</span>
      <div class="md-ripple-container"></div></a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.material.button" href="#/ui/material/button">Button</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.material.icon" href="#/ui/material/icon">Icon</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.material.color" href="#/ui/material/color">Color</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.material.card" href="#/ui/material/card">Card</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.material.form" href="#/ui/material/form">Form</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.material.list" href="#/ui/material/list">List</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.material.ngmaterial" href="#/ui/material/ngmaterial">NgMaterial</a>
        </li>
      </ul>
    </li>
    <li ng-class="{active:$state.includes('ui.form')}">
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="icon mdi-toggle-radio-button-on i-20"></i>
        <span class="font-normal">Form</span>
      </a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.layout" href="#/ui/form/layout">Form Layout</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.element" href="#/ui/form/element">Form Element</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.validation" href="#/ui/form/validation">Form Validation</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.select" href="#/ui/form/select">Select</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.editor" href="#/ui/form/editor">Editor</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.slider" href="#/ui/form/slider">Slider</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.tree" href="#/ui/form/tree">Tree</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.file-upload" href="#/ui/form/file-upload">File Upload</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.image-crop" href="#/ui/form/image-crop">Image Crop</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.form.editable" href="#/ui/form/editable">Editable</a>
        </li>
      </ul>
    </li>
    <li ng-class="{active:$state.includes('ui.table')}">
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="icon mdi-editor-format-list-bulleted i-20"></i>
        <span class="font-normal">Table</span>
      </a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.table.static" href="#/ui/table/static">Static table</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.table.smart" href="#/ui/table/smart">Smart table</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.table.datatable" href="#/ui/table/datatable">Datatable</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.table.footable" href="#/ui/table/footable">Footable</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.table.nggrid" href="#/ui/table/nggrid">NG Grid</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.table.uigrid" href="#/ui/table/uigrid">UI Grid</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.table.editable" href="#/ui/table/editable">Editable</a>
        </li>
      </ul>
    </li>
    <li ui-sref-active="active">
      <a md-ink-ripple="" ui-sref="ui.chart" href="#/ui/chart">
        <i class="pull-right up"><b class="label bg-info">NEW</b></i> 
        <i class="icon mdi-device-multitrack-audio i-20"></i>
        <span class="font-normal">Charts</span>
      </a>
    </li>
    <li ng-class="{active:$state.includes('ui.map')}">
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="icon mdi-maps-navigation i-20"></i>
        <span class="font-normal">Maps</span>
      </a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.map.google" href="#/ui/map/google">Google Map</a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="ui.map.vector" href="#/ui/map/vector">Vector Map</a>
        </li>
      </ul>
    </li>
    <li ng-class="{active:$state.includes('pages')}">
      <a md-ink-ripple="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="icon mdi-editor-insert-drive-file i-20"></i>
        <span class="font-normal">Pages</span>
      </a>
      <ul class="nav nav-sub">
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="page.profile" href="#/page/profile">
            <span>Profile</span>
          </a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="page.settings" href="#/page/settings">
            <span>Settings</span>
          </a>
        </li>
        <li ui-sref-active="active">
          <a md-ink-ripple="" ui-sref="page.blank" href="#/page/blank">
            <span>Blank</span>
          </a>
        </li>
        <li>
          <a md-ink-ripple="" ui-sref="access.signin" href="#/access/signin">
            <span>Sign In</span>
          </a>
        </li>
        <li>
          <a md-ink-ripple="" ui-sref="access.signup" href="#/access/signup">
            <span>Sign Up</span>
          </a>
        </li>
        <li>
          <a md-ink-ripple="" ui-sref="access.forgot-password" href="#/access/forgot-password">
            <span>Forgot Password</span>
          </a>
        </li>
        <li>
          <a md-ink-ripple="" ui-sref="access.lockme" href="#/access/lockme">
            <span>Lockme Screen</span>
          </a>
        </li>
        <li>
          <a md-ink-ripple="" ui-sref="404" href="#/404">
            <span>Error 404</span>
          </a>
        </li>
        <li>
          <a md-ink-ripple="" ui-sref="505" href="#/505">
            <span>Error 505</span>
          </a>
        </li>
      </ul>
    </li>
    <li class="">
      <a md-ink-ripple="" href="">
        <span class="pull-right text-muted">
          <i class="fa fa-caret-down"></i>
        </span>
        <i class="icon mdi-content-sort i-20"></i>
        <span>Menu</span>
      <div class="md-ripple-container"></div></a>
      <ul class="nav nav-sub">
        <li><a md-ink-ripple="" href="">Menu levels 1</a></li>
        <li>
          <a md-ink-ripple="" href="">
            <span class="pull-right text-muted">
              <i class="fa fa-caret-down"></i>
            </span>
            <span class="font-normal">Menu levels 2</span>
          </a>
          <ul class="nav nav-sub">
            <li>
              <a md-ink-ripple="" href="">Menu levels 2.1</a>
            </li>
            <li>
              <a md-ink-ripple="" href="">Menu levels 2.2</a>
            </li>
          </ul>          
        </li>        
      </ul>
    </li>
    <li class="b-b b m-v-sm"></li>
    <li>
      <a md-ink-ripple="" ui-toggle-class="hide, show" target="#nav, #account">
        <span>Settings</span>
      </a>
    </li>
    <li class="m-b-sm">
      <a md-ink-ripple="" ui-sref="page.document" href="#/page/document">
        <span>Document</span>
      </a>
    </li>
  </ul>
</nav>
</div>
        <div id="account" class="hide m-v-xs">
          <nav>
            <ul class="nav">
              <li>
                <a md-ink-ripple="" ui-sref="page.profile" href="#/page/profile">
                  <i class="icon mdi-action-perm-contact-cal i-20"></i>
                  <span>My Profile</span>
                </a>
              </li>
              <li>
                <a md-ink-ripple="" ui-sref="page.settings" href="#/page/settings">
                  <i class="icon mdi-action-settings i-20"></i>
                  <span>Settings</span>
                </a>
              </li>
              <li>
                <a md-ink-ripple="" ui-sref="access.lockme" href="#/access/lockme">
                  <i class="icon mdi-action-exit-to-app i-20"></i>
                  <span>Logout</span>
                </a>
              </li>
              <li class="m-v-sm b-b b"></li>
              <li>
                <a md-ink-ripple="" ui-fullscreen="" class="">
                  <i class="icon mdi-navigation-fullscreen i-24"></i>
                  <span>Fullscreen</span>
                </a>
              </li>
              <li>
                <div class="nav-item">
                  <label class="md-check">
                    <input type="checkbox" ng-model="app.setting.asideFolded" class="ng-pristine ng-untouched ng-valid" tabindex="0" aria-checked="false" aria-invalid="false">
                    <i class="green no-icon"></i>
                    <span class="hidden-folded">Folded aside</span>
                  </label>
                </div>
              </li>
              <li class="p p-v-sm hidden-folded">
                <div class="m-b-sm">Theming:</div>
                <div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'indigo', accent: 'deep-purple', warn: 'amber'}" role="button" tabindex="0">
                    <span class="indigo col-xs-4 box-col"></span>
                    <span class="deep-purple col-xs-4 box-col"></span>
                    <span class="amber col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'green', accent: 'light-green', warn: 'lime'}" role="button" tabindex="0">
                    <span class="green col-xs-4 box-col"></span>
                    <span class="light-green col-xs-4 box-col"></span>
                    <span class="lime col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'deep-purple', accent: 'blue', warn: 'light-blue'}" role="button" tabindex="0">
                    <span class="deep-purple col-xs-4 box-col"></span>
                    <span class="blue col-xs-4 box-col"></span>
                    <span class="light-blue col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'blue', accent: 'teal', warn: 'amber'}" role="button" tabindex="0">
                    <span class="blue col-xs-4 box-col"></span>
                    <span class="teal col-xs-4 box-col"></span>
                    <span class="amber col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'cyan', accent: 'light-blue', warn: 'blue'}" role="button" tabindex="0">
                    <span class="cyan col-xs-4 box-col"></span>
                    <span class="light-blue col-xs-4 box-col"></span>
                    <span class="blue col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'pink', accent: 'purple', warn: 'deep-purple'}" role="button" tabindex="0">
                    <span class="pink col-xs-4 box-col"></span>
                    <span class="purple col-xs-4 box-col"></span>
                    <span class="deep-purple col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'blue-grey', accent: 'teal-200', warn: 'lime'}" role="button" tabindex="0">
                    <span class="blue-grey col-xs-4 box-col"></span>
                    <span class="teal-200 col-xs-4 box-col"></span>
                    <span class="lime col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'bg-dark', accent: 'green-300', warn: 'amber-300'}" role="button" tabindex="0">
                    <span class="bg-dark col-xs-4 box-col"></span>
                    <span class="green-300 col-xs-4 box-col"></span>
                    <span class="amber-300 col-xs-4 box-col"></span>
                  </div>
                  <div class="pointer box pull-left m-r-sm m-b-sm" style="width:32px;height:16px" ng-click="app.setting.theme = {primary: 'bg-white', accent: 'green', warn: 'teal'}" role="button" tabindex="0">
                    <span class="bg-white col-xs-4 box-col"></span>
                    <span class="green col-xs-4 box-col"></span>
                    <span class="teal col-xs-4 box-col"></span>
                  </div>
                </div>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
  <nav>
    <ul class="nav b-t b">
      <li>
        <a class="md-button md-default-theme" ng-transclude="" href="">
          <i class="icon mdi-action-help i-20 ng-scope"></i>
          <span class="ng-scope">Help &amp; Feedback</span>
        </a>
      </li>
    </ul>
  </nav>
</div>
</md-sidenav> 
  <!-- / aside -->
  
  <!-- content -->
  <!-- uiView: content@ -->
  <!-- / content -->


<div class="modal fade ng-scope" id="user" data-backdrop="false">
  <!-- ngInclude: 'views/partials/aside.tpl.user.html' --><div class="right w-xl bg-white md-whiteframe-z2 ng-scope" ng-include="'views/partials/aside.tpl.user.html'">  <div class="box ng-scope">
    <div class="p p-h-md">
      <a data-dismiss="modal" class="pull-right text-muted-lt text-2x m-t-n inline p-sm">×</a>
      <strong>Members</strong>
    </div>
    <div class="box-row">
      <div class="box-cell">
        <div class="box-inner">
          <div class="list-group no-radius no-borders">
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
              <img src="images/a1.jpg" class="pull-left w-40 m-r img-circle">
              <div class="clear">
                <span class="font-bold block">Jonathan Doe</span>
                <span class="clear text-ellipsis text-xs">"Hey, What's up"</span>
              </div>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
              <img src="images/a2.jpg" class="pull-left w-40 m-r img-circle">
              <div class="clear">
                <span class="font-bold block">James Pill</span>
                <span class="clear text-ellipsis text-xs">"Lorem ipsum dolor sit amet onsectetur adipiscing elit"</span>
              </div>
            </a>
            <div class="p-h-md m-t p-v-xs">Work</div>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-success text-xs m-r-xs"></i>
                <span>Jonathan Morina</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-success text-xs m-r-xs"></i>
                <span>Mason Yarnell</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-warning text-xs m-r-xs"></i>
                <span>Mike Mcalidek</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Cris Labiso</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Daniel Sandvid</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Helder Oliveira</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Jeff Broderik</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Daniel Sandvid</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Helder Oliveira</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Jeff Broderik</span>
            </a>
            <div class="p-h-md m-t p-v-xs">Partner</div>            
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-success text-xs m-r-xs"></i>
                <span>Mason Yarnell</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-warning text-xs m-r-xs"></i>
                <span>Mike Mcalidek</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Cris Labiso</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Jonathan Morina</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Daniel Sandvid</span>
            </a>
            <a data-toggle="modal" data-target="#chat" data-dismiss="modal" class="list-group-item p-h-md">
                <i class="fa fa-circle text-muted-lt text-xs m-r-xs"></i>
                <span>Helder Oliveira</span>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="p-h-md p-v">
      <p>Invite People</p>
      <a href="" class="text-muted"><i class="fa fa-fw fa-twitter"></i> Twitter</a>
      <a href="" class="text-muted m-h"><i class="fa fa-fw fa-facebook"></i> Facebook</a>
    </div>
  </div>
</div>
</div>

<div class="modal fade ng-scope" id="chat" data-backdrop="false">
  <!-- ngInclude: 'views/partials/aside.tpl.chat.html' --><div class="right w-xxl bg-white md-whiteframe-z2 ng-scope" ng-include="'views/partials/aside.tpl.chat.html'">  <div class="box ng-scope">
    <div class="p p-h-md">
      <a data-dismiss="modal" class="pull-right text-muted-lt text-2x m-t-n inline p-sm">×</a>
      <strong>Chat</strong>
    </div>
    <div class="box-row bg-light lt">
      <div class="box-cell">
        <div class="box-inner">
          <div class="p-md">
            <div class="m-b">
              <a href="" class="pull-left w-40 m-r-sm"><img src="images/a2.jpg" alt="..." class="w-full img-circle"></a>
              <div class="clear">
                <div class="p p-v-sm bg-warning inline r">
                  Hi John, What's up...
                </div>
                <div class="text-muted-lt text-xs m-t-xs"><i class="fa fa-ok text-success"></i> 2 minutes ago</div>
              </div>
            </div>
            <div class="m-b">
              <a href="" class="pull-right w-40 m-l-sm"><img src="images/a3.jpg" class="w-full img-circle" alt="..."></a>
              <div class="clear text-right">
                <div class="p p-v-sm bg-info inline text-left r">
                  Lorem ipsum dolor soe rooke..
                </div>
                <div class="text-muted-lt text-xs m-t-xs">1 minutes ago</div>
              </div>
            </div>
            <div class="m-b">
              <a href="" class="pull-left w-40 m-r-sm"><img src="images/a2.jpg" alt="..." class="w-full img-circle"></a>
              <div class="clear">
                <div class="p p-v-sm bg-warning inline r">
                  Good!
                </div>
                <div class="text-muted-lt text-xs m-t-xs"><i class="fa fa-ok text-success"></i> 5 seconds ago</div>
              </div>
            </div>
            <div class="m-b">
              <a href="" class="pull-right w-40 m-l-sm"><img src="images/a3.jpg" class="w-full img-circle" alt="..."></a>
              <div class="clear text-right">
                <div class="p p-v-sm bg-info inline text-left r">
                  Dlor soe isep..
                </div>
                <div class="text-muted-lt text-xs m-t-xs">Just now</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="p-h-md p-v">
      <a class="pull-left w-32 m-r"><img src="images/a3.jpg" class="w-full img-circle" alt="..."></a>
      <form class="ng-pristine ng-valid">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Say something">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button">SEND</button>
          </span>
        </div>
      </form>
    </div>
  </div>
</div>
</div>
</div>


<%--<script src="js/app.min.js" type="text/javascript"></script>
<script src="../libs/jquery/jquery.easy-pie-chart/dist/jquery.easypiechart.fill.js">
</script><script src="../libs/jquery/flot/jquery.flot.js"></script>
<script src="../libs/jquery/flot/jquery.flot.resize.js"></script>
<script src="../libs/jquery/flot/jquery.flot.pie.js"></script>
<script src="../libs/jquery/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script src="../libs/jquery/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="../libs/jquery/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="../libs/jquery/jquery.sparkline/dist/jquery.sparkline.retina.js"></script>
<div id="flotTip" style="display: none; position: absolute; z-index: 1040; padding: 0.4em 0.6em; border-radius: 0.5em; font-size: 0.8em; border: 1px solid rgb(17, 17, 17); white-space: nowrap; background: rgb(255, 255, 255);"></div>
<script src="../libs/jquery/bower-jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../libs/jquery/bower-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../libs/jquery/bower-jvectormap/jquery-jvectormap-us-aea-en.js"></script>
<div class="jvectormap-label"></div>--%>
</body>
</html>