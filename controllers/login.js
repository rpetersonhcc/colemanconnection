myApp.controller('LoginController', ['$scope', '$http', function($scope, $http){
	$scope.header = "Coleman Connection Login";

	
	$scope.loginMessage = function(){
		
		//place all register form information in data variable
		var data = $scope.user;

		$http.post('./src/login.php', data)
			.success(function(response){
				console.log(response);
				
			});
	}
	
}]);