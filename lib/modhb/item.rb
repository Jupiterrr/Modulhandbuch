class ModHB
  class ModItem

    attr_reader :type, :name, :ects, :sws, :achievements, :modul_id, :no

    def initialize(params)
      @type = params.fetch(:type)
      @name = params.fetch(:name)
      @ects = params.fetch(:ects)
      @sws = params.fetch(:sws)
      @achievements = params.fetch(:achievements)
      @modul_id = params.fetch(:modul_id)
      @no = params.fetch(:no)
    end

  end
end