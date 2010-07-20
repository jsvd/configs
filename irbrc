['pp','irb/completion','irb/ext/save-history','rubygems'].each {|lib| require lib}
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
 
#IRB.conf[:PROMPT_MODE] = :SIMPLE
 
IRB.conf[:AUTO_INDENT] = true

require 'tempfile'

class InteractiveEditor
  attr_accessor :editor
  def initialize(editor = :vim)
    @editor = editor.to_s
    if @editor == "mate"
      @editor = "mate -w"
    end
  end
  def edit
    unless @file
      @file = Tempfile.new("irb_tempfile")
    end
    system("#{@editor} #{@file.path}")
    execute
  end
  def execute
    @file.rewind
    Object.class_eval(@file.read)
    rescue Exception => error
      puts error
  end
end

def edit(editor)
  unless IRB.conf[:interactive_editors] && IRB.conf[:interactive_editors][editor]
    IRB.conf[:interactive_editors] ||= {}
    IRB.conf[:interactive_editors][editor] = InteractiveEditor.new(editor)
  end
  IRB.conf[:interactive_editors][editor].edit
end

def vi
  edit(:vim)
end
