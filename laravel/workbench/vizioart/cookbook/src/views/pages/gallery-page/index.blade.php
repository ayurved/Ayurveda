<div id="app-container" class="wrap" ng-controller="galleriesController">

	<div class="sub-header">

		<div class="sub-header-left"></div>

		<div class="sub-header-main">

			<div class="pull-left">
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">[% (activeLanguage.code | uppercase) || "TT" %] <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li ng-repeat="lang in languages">
							<a href="#" class="" ng-click="setActiveLanguage(lang)" >[%lang.description%]</a>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="view-nav">
				<ul class="nav nav-line">
					<li ng-repeat="status in statusfilters" ng-class="{active: status == activeStatusFilter}">
						<a href="#" ng-click="setActiveStatusFilter(status)" >[%status.label%]</a>
					</li>
				</ul>
			</div>

			<div class="pull-left form-inline">
				<input type="text" class="form-control" placeholder="search" ng-model="searchText">
			</div>


		</div>

	</div>


	
	<div class="app-main" >

		<div class="container-fluid">

			<div class="gallery-listing">
				<div gallery-item class="gallery-item" 
					 ng-repeat="item in model.items | filter:filterByLanguage | filter:filterByStatus | filter:filterBySearch " 
					 item="item" 
					 language="activeLanguage" 
					 searchquery="searchText" >
				</div>
			</div>

		</div>

	</div>


	<div class="app-sidebar">
		
		<div class="main-action ps pt">

			<div class="btn-group btn-lang-options">
				<a href="{{ url('admin/galleries/add') }}" class="btn-action btn btn-primary"><span class="glyphicon glyphicon-plus"></span> New Gallery Page</a>
				<span class="btn-options btn btn-primary dropdown-toggle" data-toggle="dropdown">
					<span>EN</span>
					<span class="caret"></span>
					<span class="sr-only">Toggle Dropdown</span>
				</span>
				<ul class="dropdown-menu" role="menu">
					<li><a href="{{ url('admin/galleries/add/en') }}">English</a></li>
					<li><a href="{{ url('admin/galleries/add/cs') }}">Czech</a></li>
					<li><a href="{{ url('admin/galleries/add/ru') }}">Russian</a></li>
					<li class="divider"></li>
					<p class="tip">Make a group of buttons stretch at equal sizes to span the entire</p>
				</ul>
			</div>

		</div>

	</div>
</div>