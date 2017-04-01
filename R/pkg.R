#' cleanNLP: A Tidy Data Model for Natural Language Processing
#'
#' Provides a set of fast tools for converting a textual corpus into a set of
#' normalized tables. The underlying natural language processing pipeline utilizes
#' either the Python module spaCy or the Java-based Stanford CoreNLP library.
#' The Python option is faster and generally easier to install; the Java option
#' has additional annotators that are not available in spaCy.
#'
#' Once the package is set up, run \code{\link{init_clean_nlp}} to start the
#' either the Python or Java engine and to load the CoreNLP pipeline. After this function is
#' done loading, use \code{\link{annotate}} to run the annotation engine over a corpus
#' of text. Functions are then available to extract data tables from the annotation
#' object: \code{\link{get_token}}, \code{\link{get_dependency}}, \code{\link{get_document}},
#' \code{\link{get_coreference}}, \code{\link{get_entity}}, \code{\link{get_sentiment}},
#' \code{\link{get_triple}}, and \code{\link{get_vector}}. See their documentation for
#' further details. The package vignettes provide more detailed set-up information.
#'
#' If loading annotation that have previously been saved to disk, these can be pulled back into R
#' using \code{\link{read_annotation}}. This does not require Java or Python nor does it
#' require initializing the annotation pipeline.
#'
#' @examples
#'
#'\dontrun{
#' # load the annotation engine (skip this if you spaCy not installed)
#' init_clean_nlp("spaCy")
#'
#' # annotate your text
#' annotation <- annotate("path/to/corpus/directory")
#'
#' # pull off data tables
#' token <- get_token(annotation)
#' dependency <- get_dependency(annotation)
#' document <- get_document(annotation)
#' coreference <- get_coreference(annotation)
#' entity <- get_entity(annotation)
#' sentiment <- get_sentiment(annotation)
#' triple <- get_triple(annotation)
#' vector <- get_vector(annotation)
#'}
#'
#' @import dplyr
#'
#' @docType package
"_PACKAGE"