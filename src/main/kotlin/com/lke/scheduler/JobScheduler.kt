package com.lke.scheduler

import com.lke.elasticsearch.index.ElasticsearchIndexer
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Component

@Component
class JobScheduler {

    @Scheduled(initialDelay = 5000, fixedDelay = 5000)
    fun callElasticsearchIndexer() =
            ElasticsearchIndexer.index()

}