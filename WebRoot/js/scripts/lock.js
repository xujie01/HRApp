var Lock = function () {

    return {
        //main function to initiate the module
        init: function () {

             $.backstretch([
		        "images/login/1.jpg",
		        "images/login/2.jpg",
		        "images/login/3.jpg",
		        "images/login/4.jpg"
		        ], {
		          fade: 1000,
		          duration: 8000
		      });
        }

    };

}();