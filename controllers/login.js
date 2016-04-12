myApp.controller('LoginController', ['$scope', function($scope, $http){
	$scope.header = "Coleman Connection Login";

	$scope.loginSuccess = function(){
		$scope.message = "Welcome " + $scope.user.email;
	}
	
	
}]);