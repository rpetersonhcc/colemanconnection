myApp.controller('StudentsCtrl', ['$scope', function($scope){
	
	$scope.students = [  
   {  
      "firstname":"Octavius",
      "lastname":"Little",
      "email":"mauris.rhoncus.id@aauctor.com"
   },
   {  
      "firstname":"Randall",
      "lastname":"Ward",
      "email":"Aliquam@orciPhasellus.co.uk"
   },
   {  
      "firstname":"Len",
      "lastname":"Bolton",
      "email":"a@nislQuisquefringilla.ca"
   },
   {  
      "firstname":"Zahir",
      "lastname":"Hawkins",
      "email":"lacus.Ut.nec@aliquetPhasellus.edu"
   },
   {  
      "firstname":"Boris",
      "lastname":"Vaughan",
      "email":"iaculis.aliquet@mus.edu"
   },
   {  
      "firstname":"Finn",
      "lastname":"Norris",
      "email":"dui.Cum@Suspendissealiquet.edu"
   },
   {  
      "firstname":"Chandler",
      "lastname":"Carver",
      "email":"tellus.Suspendisse@aliquet.com"
   },
   {  
      "firstname":"Elijah",
      "lastname":"Mason",
      "email":"adipiscing.elit@tellusSuspendisse.co.uk"
   },
   {  
      "firstname":"Richard",
      "lastname":"Peterson",
      "email":"rpetersonhcc@gmail.com"
   },
   {  
      "firstname":"Rahim",
      "lastname":"Burch",
      "email":"suscipit.est.ac@ornare.ca"
   },
   {  
      "firstname":"Brent",
      "lastname":"Martinez",
      "email":"eu.accumsan.sed@turpisIncondimentum.net"
   },
   {  
      "firstname":"Nigel",
      "lastname":"Austin",
      "email":"nunc@euenimEtiam.co.uk"
   },
   {  
      "firstname":"Hu",
      "lastname":"Meyers",
      "email":"pellentesque.eget@vel.edu"
   },
   {  
      "firstname":"Joshua",
      "lastname":"Mccullough",
      "email":"euismod.mauris@cursus.ca"
   },
   {  
      "firstname":"Neil",
      "lastname":"Macdonald",
      "email":"libero.et.tristique@vitae.net"
   },
   {  
      "firstname":"Ali",
      "lastname":"Williamson",
      "email":"consectetuer.mauris@purusNullamscelerisque.co"
   },
   {  
      "firstname":"Allen",
      "lastname":"Harmon",
      "email":"orci@Phasellusornare.com"
   },
   {  
      "firstname":"Troy",
      "lastname":"Ward",
      "email":"dolor@velvenenatis.ca"
   },
   {  
      "firstname":"Brody",
      "lastname":"Craft",
      "email":"Quisque.tincidunt.pede@Nullam.ca"
   },
   {  
      "firstname":"Hammett",
      "lastname":"Mays",
      "email":"pellentesque.eget@Nuncsollicitudincommodo.edu"
   },
   {  
      "firstname":"Jamal",
      "lastname":"Wheeler",
      "email":"volutpat.Nulla.dignissim@faucibuslectusa.ca"
   },
   {  
      "firstname":"Benjamin",
      "lastname":"Waters",
      "email":"Quisque.varius.Nam@feugiattellus.ca"
   },
   {  
      "firstname":"Rafael",
      "lastname":"Tate",
      "email":"sem.semper@pellentesquea.edu"
   },
   {  
      "firstname":"Jared",
      "lastname":"Graves",
      "email":"id.enim.Curabitur@eu.net"
   },
   {  
      "firstname":"Ishmael",
      "lastname":"Cleveland",
      "email":"imperdiet.erat@Quisquevarius.edu"
   },
   {  
      "firstname":"Chaney",
      "lastname":"Morse",
      "email":"mi.tempor@quis.org"
   },
   {  
      "firstname":"Hayden",
      "lastname":"Jacobs",
      "email":"erat@euodioPhasellus.ca"
   },
   {  
      "firstname":"Vance",
      "lastname":"Bowers",
      "email":"auctor.velit@id.net"
   },
   {  
      "firstname":"Lewis",
      "lastname":"Moses",
      "email":"feugiat@variusNamporttitor.edu"
   },
   {  
      "firstname":"Hilel",
      "lastname":"Bowers",
      "email":"sem@magnaatortor.edu"
   },
   {  
      "firstname":"Acton",
      "lastname":"Sandoval",
      "email":"Phasellus.nulla.Integer@Cumsociisnatoque.edu"
   },
   {  
      "firstname":"Steven",
      "lastname":"Mccarthy",
      "email":"non@mi.org"
   },
   {  
      "firstname":"Anthony",
      "lastname":"Chavez",
      "email":"sit@nibhAliquamornare.org"
   },
   {  
      "firstname":"Addison",
      "lastname":"Preston",
      "email":"montes@ideratEtiam.com"
   },
   {  
      "firstname":"Nehru",
      "lastname":"Flores",
      "email":"tellus.sem@eros.com"
   },
   {  
      "firstname":"Hector",
      "lastname":"Griffin",
      "email":"Cras.dictum.ultricies@libero.net"
   },
   {  
      "firstname":"Evan",
      "lastname":"Kinney",
      "email":"justo@vitaealiquameros.co.uk"
   },
   {  
      "firstname":"Wade",
      "lastname":"Michael",
      "email":"fringilla.Donec@acmetusvitae.net"
   },
   {  
      "firstname":"Nathaniel",
      "lastname":"Snyder",
      "email":"ac.orci@aliquetvelvulputate.ca"
   },
   {  
      "firstname":"Amery",
      "lastname":"Sargent",
      "email":"vulputate.eu@interdum.net"
   },
   {  
      "firstname":"Oliver",
      "lastname":"Weeks",
      "email":"semper.auctor@Ut.edu"
   },
   {  
      "firstname":"Flynn",
      "lastname":"Key",
      "email":"Sed.auctor@adipiscingfringillaporttitor.co.uk"
   },
   {  
      "firstname":"Macaulay",
      "lastname":"Wynn",
      "email":"ipsum.dolor.sit@elitpretium.co.uk"
   },
   {  
      "firstname":"Neil",
      "lastname":"Potts",
      "email":"montes@dictumplacerataugue.edu"
   },
   {  
      "firstname":"Drew",
      "lastname":"Rowland",
      "email":"velit@Proin.com"
   },
   {  
      "firstname":"Ulric",
      "lastname":"Duke",
      "email":"adipiscing.enim.mi@quismassaMauris.co.uk"
   },
   {  
      "firstname":"Raymond",
      "lastname":"Shepherd",
      "email":"Proin.vel.arcu@nisisemsemper.com"
   },
   {  
      "firstname":"Reuben",
      "lastname":"Morrison",
      "email":"Nunc@ut.ca"
   },
   {  
      "firstname":"Kermit",
      "lastname":"Patel",
      "email":"nec@Phaselluselit.org"
   },
   {  
      "firstname":"Ulric",
      "lastname":"Levy",
      "email":"urna.convallis@molestie.edu"
   }
];

	
}]);