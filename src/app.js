var myApp = angular.module('ColemanConnectionApp', ['ngRoute']);

myApp.config(['$routeProvider', function($routeProvider){
	$routeProvider.
		when('/', {
			templateUrl: 'views/home/index.html',
			controller: 'HomeController'
		}).
		when('/login', {
			templateUrl: 'views/login/index.html',
			controller: 'LoginController'
		}).

		when('/register', {
			templateUrl: 'views/register/index.html',
			controller: 'RegisterController'
		}).

		when('/success', {
			templateUrl: 'views/success/index.html',
			controller: 'SuccessController'
		}).
		otherwise({
			redirectTo: 'views/home/index.html',
			controller: 'HomeController'
		});

		
}]);