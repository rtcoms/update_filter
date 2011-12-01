# lib/update_filter/hook.rb
module UpdateFilter::Hook

  def before_update_filter(callback_method, options = {})

      self.set_callback :save, :before do
        
        if options[:or_params].nil? && options[:and_params].nil?
            send callback_method
        elsif !options[:or_params].nil? && options[:and_params].nil?
            send callback_method if options[:or_params].map{ |attr| attribute_changed?(attr.to_s) }.any?
        elsif options[:or_params].nil? && !options[:and_params].nil?
            send callback_method if options[:and_params].map{ |attr| attribute_changed?(attr.to_s) }.all?
        else
            send callback_method if options[:and_params].map{ |attr| attribute_changed?(attr.to_s) }.all? || options[:or_params].map{ |attr| attribute_changed?(attr.to_s) }.any?
        end
        
      end

  end

  def after_update_filter(callback_method, options = {})


      self.set_callback :save, :after do
      
        if options[:or_params].nil? && options[:and_params].nil?
            send callback_method
        elsif !options[:or_params].nil? && options[:and_params].nil?
            send callback_method if options[:or_params].map{ |attr| attribute_changed?(attr.to_s) }.any?
        elsif options[:or_params].nil? && !options[:and_params].nil?
            send callback_method if options[:and_params].map{ |attr| attribute_changed?(attr.to_s) }.all?
        else
            send callback_method if options[:and_params].map{ |attr| attribute_changed?(attr.to_s) }.all? || options[:or_params].map{ |attr| attribute_changed?(attr.to_s) }.any?
        end
        
      end

  end

end
