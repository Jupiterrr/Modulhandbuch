$ ->
  
  class Term

    constructor: (@el, @items=[]) ->
      @el.addEventListener('dragenter', @handleDragEnter, false)
      @el.addEventListener('dragover', @handleDragOver, false)
      @el.addEventListener('dragleave', @handleDragLeave, false)
      @el.addEventListener('drop', @handleDrop, false);
      @render()

    handleDragOver: (e) =>
      e.dataTransfer.dropEffect = 'copy';  # See the section on the DataTransfer object.
      @el.classList.add('over')
      e.preventDefault() if (e.preventDefault) # Necessary. Allows us to drop.
      return false

    handleDragEnter: (e) =>
      @el.classList.add('over')

    handleDragLeave: (e) =>
      @el.classList.remove('over');

    handleDrop: (e) =>
      e.stopPropagation() if (e.stopPropagation) # stops the browser from redirecting.
      # See the section on the DataTransfer object.
      console.log "drop", e.dataTransfer.getData('text/id')
      @items.push e.dataTransfer.getData('text/id')
      @render()
      return false;

    render: ->
      $(@el).find(".items")[0].innerHTML = @items.join(", ")

  class DnDItem

    constructor: (@el) ->
      @el.addEventListener('dragstart', @handleDragStart, false)
      @el.addEventListener('dragend', @handleDragEnd, false)

    handleDragStart: (e) ->
      e.dataTransfer.setData('text/id', this.id); # required otherwise doesn't work

    handleDragEnd: (e) ->
      terms = document.querySelectorAll('.terms-area .term')
      for term in terms
        term.classList.remove('over')




  terms = document.querySelectorAll('.terms-area .term')
  for term in terms
    new Term(term)

  items = document.querySelectorAll('.item')
  for item in items
    new DnDItem(item)

