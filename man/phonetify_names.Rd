% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/name_phonetic_matching_functions.R
\name{phonetify_names}
\alias{phonetify_names}
\title{Cleans name using phonetic matching}
\usage{
phonetify_names(dataset, key.dict)
}
\arguments{
\item{dataset}{Dataset containing actors by user}

\item{key.dict}{Key dictionary to clean actors' names against}
}
\value{
Cleaned dataset with actors names standardized against the key dictionary.

A few vectors of indices will also be created to store the indices of those names
that needs to be matched. The first is a vector of indices of all actors that
require cleaning. \code{unmatched_indices} is a vector of indices of names
not cleaned by the function. \code{custom_indices} is a vector of indices
denoting names for which custom actor names are given by the user, and will be
used to update the key dictionary.
}
\description{
\code{phonetify_names()} searches for actors' names which are not standardized
and standardizes them according to the key dictionary. Users get to choose which name
is correct based on a selection narrowed down by using phonetic matching. Users can
choose to input custom names should the names not be in the key dictionary.
}
\details{
A combination of 5 different phonetic representations (Metaphone, Nysiis modified,
Onca modified refined, Phonex, Roger Root) is used in tandem with a variety of string
distance metrics (Full Damerau-Levenshtein distance, q-gram distance,
cosine distance (between q-gram profiles), Jaccard distance between (q-gram profiles),
and Jaro-Winker distance) to get an accurate match of the actor's name within the
supplied key dictionary.
}
