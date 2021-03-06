-- need background set to simple background

lightyellow = gr.material({51.0/255, 161.0/255, 201.0/255}, {0.0, 0.0, 0.0}, 0, 0)
refractmat = gr.material({0.1, 0.1, 0.1}, {0.5, 0.7, 0.5}, 25, 0, 1.5)

supporter = gr.node('supporter')
-- supporter:translate(0,0,100)

crystalball = gr.nh_sphere('crystalball', {0, 0, 0}, 150)
supporter:add_child(crystalball)
crystalball:translate(0, 450, 0)
crystalball:set_material(refractmat)

-- supporter = gr.nh_cylinder('supporter', {0, 0, 0}, {0, 1, 0}, 100, 300)
-- scene_root:add_child(supporter)
-- supporter:translate(-20, 0, -10)
-- supporter:set_material(alum)

supporter_cone = gr.nh_cone('supporter_cone', {0,0,0}, 120, 200, 300)
supporter:add_child(supporter_cone)
supporter_cone:translate(0, 0, 0)
supporter_cone:set_material(lightyellow)

green_light = gr.light({400.0, 100.0, 100.0}, {0.5, 0.7, 0.5}, {1, 0, 0})
white_light = gr.light({0.0, 100.0, 0.0}, {0.5, 0.5, 0.5}, {1, 0, 0})

gr.render(supporter, '../img/supporter_test.png', 1024, 1024,
	  {0, 0, 800}, {0, 0, -800}, {0, 1, 0}, 50,
	  {0.3, 0.3, 0.3}, {white_light, green_light})
