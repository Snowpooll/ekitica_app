# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  #storage :file
   storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
  process :get_exif_info

  def get_exif_info
    #exif = Magick::Image.read(self.file.file).first
    #exif = EXIFR::JPEG::new(self.file.file)
    #  p exif_lat = Magick::Image.read(self.file.file)[0].get_exif_by_entry('GPSLatitude')
    #  p exif_lng = Magick::Image.read(self.file.file)[0].get_exif_by_entry('GPSLongitude')

    #s3 photo exif gps info
     exif_lat = Magick::Image.read(self.file.file)[0].get_exif_by_entry('GPSLatitude')[0][1].to_s.split(',').map(&:strip)
     exif_lng = Magick::Image.read(self.file.file)[0].get_exif_by_entry('GPSLongitude')[0][1].to_s.split(',').map(&:strip)
     latitude = (Rational(exif_lat[0]) + Rational(exif_lat[1])/60 + Rational(exif_lat[2])/3600).to_f
     longitude = (Rational(exif_lng[0]) + Rational(exif_lng[1])/60 + Rational(exif_lng[2])/3600).to_f
    #binding.pry
  end

end
