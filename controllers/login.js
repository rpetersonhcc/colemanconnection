myApp.controller('LoginController', ['$scope', function($scope){
	$scope.header = "Coleman Connection Login";

	$scope.login = function(){
		$scope.message = "Welcome " + $scope.user.email;
	}
}]);