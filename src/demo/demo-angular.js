angular.module('demoSortApp', [])

.controller('usersCtrl', function($scope, $http) {
  $http.get('./src/demo/demo-users.php').
  	success(function(data){
  		$scope.users = data;
  	});
  
});