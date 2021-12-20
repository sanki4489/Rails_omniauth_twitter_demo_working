class Tuser < ApplicationRecord
#  def self.find_or_create_from_auth_hash(auth_hash)
#     tuser = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
#     tuser.update(
#       name: auth_hash.info.name,  
#       username: auth_hash.info.nickname,
#       image: auth_hash.info.image,
#       token: auth_hash.credentials.token,
#       secret: auth_hash.credentials.secret
#     )
#     tuser
#  end
    
end
