/*登陆 注册*/
var app = angular.module('myApp', []);
		app.controller('validateCtrl', function($scope) {
 	  	 $scope.username = '';
 	  	 $scope.password = '';
  	   	 $scope.email = '';
		});