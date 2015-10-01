# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( iframeResizer.min.js )
Rails.application.config.assets.precompile += %w( iframeResizer.contentWindow.min.js )
Rails.application.config.assets.precompile += %w( own.js )
Rails.application.config.assets.precompile += %w( ownjsmol.js )
Rails.application.config.assets.precompile += %w( ownParent.js )
Rails.application.config.assets.precompile += %w( ownFrame.js )
Rails.application.config.assets.precompile += %w( ownPrototype.js )
Rails.application.config.assets.precompile += %w( prototip.js )
Rails.application.config.assets.precompile += %w( styles.js )
Rails.application.config.assets.precompile += %w( biojs/jquery-1.4.2.min.js )
Rails.application.config.assets.precompile += %w( biojs/jquery-ui-1.8.2.custom.min.js )
Rails.application.config.assets.precompile += %w( biojs/Biojs.js )
Rails.application.config.assets.precompile += %w( biojs/Biojs.Sequence_alignment.js )
Rails.application.config.assets.precompile += %w( biojs/Biojs.Tooltip.js )
Rails.application.config.assets.precompile += %w( biojs_sequence.css )
Rails.application.config.assets.precompile += %w( jsmol/jquery/jquery.js )
Rails.application.config.assets.precompile += %w( jsmol/js/JSmoljQueryExt.js )
Rails.application.config.assets.precompile += %w( jsmol/JSmol.min.js )
Rails.application.config.assets.precompile += %w( jsmol/JSmol.GLmol.min.js )
Rails.application.config.assets.precompile += %w( mols/chimeraClass.js )
Rails.application.config.assets.precompile += %w( mols/JSmolClass.js )
Rails.application.config.assets.precompile += %w( mols/bionotes_jsmol.js )
Rails.application.config.assets.precompile += %w( sweetalert.min.js )
Rails.application.config.assets.precompile += %w( domain_graphics.js )
Rails.application.config.assets.precompile += %w( canvas.text.js )
Rails.application.config.assets.precompile += %w( optimer-bold-normal.js )
Rails.application.config.assets.precompile += %w( prototip.js )
Rails.application.config.assets.precompile += %w( styles.js )
Rails.application.config.assets.precompile += %w( excanvas.js )
Rails.application.config.assets.precompile += %w( firebug-lite-compressed.js )
Rails.application.config.assets.precompile += %w( main.css )
Rails.application.config.assets.precompile += %w( frames.css )
Rails.application.config.assets.precompile += %w( sweetalert.css )
Rails.application.config.assets.precompile += %w( start.css )
Rails.application.config.assets.precompile += %w( tooltipster.css )
Rails.application.config.assets.precompile += %w( themes/tooltipster-light.css )
Rails.application.config.assets.precompile += %w( jquery.tooltipster.min.js )
