package org.gradle.example.task

import org.gradle.api.DefaultTask
import org.gradle.api.tasks.TaskAction

/**
 * Created by maxpaint on 05.06.2016.
 */
class GreetingTask extends DefaultTask {
    String greeting = 'hello from GreetingTask'

    @TaskAction
    def greet() {
        println greeting
    }
}
