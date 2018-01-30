package com.lke.elasticsearch.index

import com.lke.util.logging.AppLogger

class ElasticsearchIndexer {

    companion object Factory {
        fun index(){
            LOGGER.info("Starting indexing documents")
            /// implement code here
            LOGGER.info("Index process finished")
        }

        private val LOGGER = AppLogger.get(this::class)
    }

}