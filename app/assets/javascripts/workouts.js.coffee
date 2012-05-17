# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class Movement extends Backbone.Model
	defaults: -> 
		exercise: ""
		type: ""
		
		weight: 0
		weight_unit: "lbs"
		distance: 0
		distance_unit: "m"
		
		minutes: 0
		seconds: 0
		
		reps: 0
		cals: 0


class MovementList extends Backbone.Collection
	model: Movement



class MovementView extends Backbone.View
	tagName: "table"
	
	movementTemplate: _.template($('#movement-template').html())
	
	className: "movement-list"
	
	events:
		"click .button.delete":	"destroy"
		
	render: ->
		
		html = @template { movementName: "yo" }
		console.log(html)
	
	addOne: (movementName) ->
		alert "Adding " + movementName
		m = new Movement
		m.exercise = movementName
		
		view = movementTemplate({movementName: m.exercise})
		

Movements = new MovementList
WorkoutApp = new MovementView

$(document).ready ->
	$("#btn-add-movement").click ->
		movementName = $("#movement-name").val()
		WorkoutApp.addOne(movementName)