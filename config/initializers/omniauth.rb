OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, "YYrEv8RyQVMKrZUqlPMOLU1xa", "tQFcSp06qdLtG6iou4b2rZHYmnNkd8KxPVJ4zgUCf0fY581Yhj"
end