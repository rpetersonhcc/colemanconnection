myApp.controller('RegisterController', ['$scope', function($scope){
	$scope.header = "Coleman Connection Registration";

	$scope.register = function(){
		$scope.message = "Congratulations " + $scope.student.firstname + " " + $scope.student.lastname + " you have successfully registered.";
	}
}]);