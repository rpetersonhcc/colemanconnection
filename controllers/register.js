myApp.controller('RegisterController', ['$scope', '$http', function($scope, $http){

	// Registration Form Heading
	$scope.header = "Coleman Connection Registration";

	$scope.registerMessage = function(){
		
		//place all register form information in data variable
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