myApp.controller('RegisterController', ['$scope', '$http', function($scope, $http){
	$scope.header = "Coleman Connection Registration";

	$scope.registerMessage = function(){
		
		var data = $scope.register;

		$http.post('./src/register.php', data)
			.success(function(response){
				console.log(response);
				if(response['messages'] != ''){
					$scope.message = "Congratulations " + $scope.register.firstname + " " + $scope.register.lastname + " you have successfully registered.";
				} else{
					$scope.message = response['error'];
				}
			});
	}
	

}]);