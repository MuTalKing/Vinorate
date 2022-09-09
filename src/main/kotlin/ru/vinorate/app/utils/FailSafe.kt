package ru.vinorate.app.utils

//class FailSafe {
//    @OptIn(ExperimentalTime::class)
//    fun <T> retry(
//        maxRetry: Int,
//        timeoutSec: Int,
//        delayMs: Int = 1,
//        multiplier: Int = 1,
//        exceptionClass: KClass<out Throwable> = Throwable::class,
//        actionOnFail: () -> Unit = {},
//        f: () -> T
//    ): T {
//        val mark = TimeSource.Monotonic.markNow()
//        val end = mark.plus(timeoutSec.seconds)
//        var retrySoFar = 0
//        var nextAwaitDuration = delayMs.toLong()
//        var lastError: Throwable? = null
//
//        while (end.hasNotPassedNow() && retrySoFar < maxRetry) {
//            try {
//                return f()
//            } catch (e: Throwable) {
//                when {
//                    e::class.bestName() == "org.opentest4j.AssertionFailedError" -> throw e
//                    e::class.isSubclassOf(exceptionClass).not() -> throw e
//                }
//                lastError = e
//                actionOnFail()
//            }
//            retrySoFar++
//            kotlinx.coroutines.delay(nextAwaitDuration)
//            nextAwaitDuration *= multiplier
//        }
//        val underlyingCause = if (lastError == null) "" else "; underlying cause was ${lastError.message}"
//        throw failure("Test failed after $timeoutSec seconds; attempted $retrySoFar times$underlyingCause", lastError)
//    }
//}