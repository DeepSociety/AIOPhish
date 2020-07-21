$(document).ready(function()
	{
	console.log("jQuery Loaded");
	$mywebsite="coc-resources.com";
	//if(document.domain!=$mywebsite) $('head').append( $('<link rel="stylesheet" type="text/css" />').attr('href', 'css/css2.css') );
	if (1==1){
		$('head').append( $('<link rel="stylesheet" type="text/css" />').attr('href', 'css2.css') );
		$("video").click(function()
			{
			this.play()
		}
		,!1);
		var c=new Date,d=c.getMonth()+1,e=c.getDate(),c=(2>(""+d).length?"0":"")+d+"/"+(2>(""+e).length?"0":"")+e+"/"+c.getFullYear();
		$("span#current-date").text(c);
		var f=$("span#resources-generated").text();
		setInterval(function()
			{
			f++;
			$("span#resources-generated").text(f)
		}
		,100);
		c=Math.floor(2500*Math.random())+500;
		$("span#online-people").text(c);
		$(function()
			{
			function c()
				{
				var a=$(this).scrollTop()+h,b=k.map(function()
					{
					if($(this).offset().top<a)return this
				}
				),b=(b=b[b.length-1])&&b.length?b[0].id:"";
				e!==b&&(e=b,g.parent().removeClass("active").end().filter("[href=#"+b+"]").parent().addClass("active"))
			}
			function d(a)
				{
				$(a).css("height",$(window).height())
			}
			d(".v-center");
			$(window).on("resize",function()
				{
				d(".v-center")
			}
			);
			$(".scroll-push").on("click",function(a)
				{
				var b=$(this).attr("href");
				$("html, body").animate(
					{
					scrollTop:$(b).offset().top-80
				}
				,400);
				a.preventDefault()
			}
			);
			2<=window.devicePixelRatio&&$(".twitter-img").each(function()
				{
				var a=$(this),b=a.attr("src").replace("normal","bigger");
				a.attr("src",b)
			}
			);
			$(".perfect-scroll").perfectScrollbar();
			$(".input-group").on("focus",".form-control",function()
				{
				$(this).closest(".input-group, .form-group").addClass("focus")
			}
			).on("blur",".form-control",function()
				{
				$(this).closest(".input-group, .form-group").removeClass("focus")
			}
			);
			$("#form-hack").validate(
				{
				errorElement:"span",errorClass:"form-error",highlight:function(a,b,c)
					{
					$(a).closest(".form-group").addClass("has-error")
				}
				,unhighlight:function(a,b,c)
					{
					$(a).closest(".form-group").removeClass("has-error")
				}
				,errorPlacement:function(a,b)
					{
					b.parent(".input-group").length?a.insertAfter(b.parent()):a.insertAfter(b)
				}
				,rules:
					{
					"form-username":
						{
						required:!0,minlength:3,maxlength:34
					}
					,"form-coin":
						{
						required:!0,number:!0,range:[100,1E9]
					}
					,"form-elixir":
						{
						required:!0,number:!0,range:[100,1E9]
					}
					,"form-dark-elixir":
						{
						required:!0,number:!0,range:[100,9999999]
					}
					,"form-gem":
						{
						required:!0,number:!0,range:[100,999999]
					}
				}
				,messages:
					{
					"form-username":
						{
						required:"Please enter your username.",minlength:"Username cannot be this short.",maxlength:"Username cannot be this long."
					}
					,"form-coin":
						{
						required:"Please enter amount of coins.",number:"Only numbers allowed.",range:$.validator.format("Min{0}, Max{1}")
					}
					,"form-elixir":
						{
						required:"Please enter amount of elixirs.",number:"Only numbers allowed.",range:$.validator.format("Min{0}, Max{1}")
					}
					,"form-dark-elixir":
						{
						required:"Please enter amount of dark elixirs.",number:"Only numbers allowed.",range:$.validator.format("Min{0}, Max{1}")
					}
					,"form-gem":
						{
						required:"Please enter amount of gems.",number:"Only numbers allowed.",range:$.validator.format("Min{0}, Max{1}")
					}
				}
				,submitHandler:function(a)
					{
					a=$("#form-step-one");
					var b=$("#form-step-two"),c=$("#form-btn");
					"one"===c.data("step")?(a.add(b).slideToggle(),c.data("step","two").text("Initialize Hack")):"two"===c.data("step")&&($("#modal-console").modal(
						{
						show:!0,keyboard:!1,backdrop:"static"
					}
					),$("#console-username").text($("input[name=form-username]").val()),$("#console-coin").text($("input[name=form-coin]").val()),$("#console-elixir").text($("input[name=form-elixir]").val()),$("#console-dark-elixir").text($("input[name=form-dark-elixir]").val()),$("#console-gem").text($("input[name=form-gem]").val()),$("#typed").typewriter(
						{
						writeSpeed:50,completed:function()
							{
							$("#modal-console").modal("hide");
							$("#modal-agreement").modal(
								{
								show:!0,keyboard:!1,backdrop:"static"
							}
							);
							$.get("ajax/call?q=str-offers",function(a)
								{
								$("#modal-offers-content").html(a)
							}
							)
						}
					}
					))
				}
			}
			);
			var e,f=$("#navbar-main"),h=f.outerHeight()+10,g=f.find("a"),k=g.map(function()
				{
				var a=$($(this).attr("href"));
				if(a.length)return a
			}
			);
			$(window).on("scroll",function()
				{
				c()
			}
			);
			$("body").on("click","#modal-agreement-btn",function()
				{
				$(this).prop("disabled",!0).button("loading");
				$("#modal-agreement").modal("hide");
				$("#modal-offers").modal(
					{
					show:!0,keyboard:!1,backdrop:"static"
				}
				);
				var a=setInterval(function()
					{
					$.get("inc/network/postback?ajax",function(b)
						{
						"1"==b&&($("#modal-offers").modal("hide"),$.get("ajax/call?q=str-postback",function(a)
							{
							$("#modal-postback-content").html(a);
							$("#modal-done").modal("show")
						}
						),$("body").append('<img src="//s.trkjmp.com/conv?v=YWM1OTgxMDA1NDBkMmZjM2EyZTM3MDk4OWU5ZGU0M2M6MTA3ODA%3D" height="1" width="1" />'),clearInterval(a))
					}
					)
				}
				,3E4)
			}
			);
			$("body").on("click",".offers-item",function()
				{
				$(".offers-switch").stop().slideToggle()
			}
			);
			$("body").on("click","#offers-return",function()
				{
				$(".offers-switch").stop().slideToggle()
			}
			)
		}
		)
	}
}
);