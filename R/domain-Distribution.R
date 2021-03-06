Distribution <- R6::R6Class("Distribution", # nolint
  inherit = JSONSerializableDomainObject,
  public = list(
    get_total_absolute_frequency = function() {
      return(private$totalAbsoluteFrequency) #nolint
    },
    set_total_absolute_frequency = function(total_absolute_frequency) {
      private$totalAbsoluteFrequency <- jsonlite::unbox(total_absolute_frequency) # nolint
    },
    get_total_valid_absolute_frequency = function() {
      return(private$totalValidAbsoluteFrequency) #nolint
    },
    set_total_valid_absolute_frequency = function(total_valid_absolute_frequency) { #nolint
      private$totalValidAbsoluteFrequency <- jsonlite::unbox(total_valid_absolute_frequency) # nolint
    },
    get_total_valid_relative_frequency = function() {
      return(private$totalValidRelativeFrequency) #nolint
    },
    set_total_valid_relative_frequency = function(total_valid_relative_frequency) { #nolint
      private$totalValidRelativeFrequency <- jsonlite::unbox(total_valid_relative_frequency) # nolint
    },
    get_valid_responses = function() {
      return(private$validResponses) #nolint
    },
    set_valid_responses = function(valid_responses) {
      private$validResponses <- valid_responses # nolint
    },
    get_missings = function() {
      return(private$missings)
    },
    set_missings = function(missings) {
      private$missings <- missings
    },
    get_statistics = function() {
      return(private$statistics)
    },
    set_statistics = function(statistics) {
      private$statistics <- statistics
    }
  ),
  private = list(
    totalAbsoluteFrequency = NULL,
    totalValidAbsoluteFrequency = NULL,
    totalValidRelativeFrequency = NULL,
    validResponses = NULL,
    missings = NULL,
    statistics = NULL
  )
)
