# Segment Queue

Wrapper for Segment's python library using Redis as the queue.

Events are queued in Redis and a CLI consumer is provider for delivery to Segment.


# Installing this package

    pip install segment-queue


# Using this package
Create an `analytics` instance:

    from segment import Analytics

    analytics = Analytics('your write key', redis_conn)

Call `identify` or `track` on that instance, just as you would with the official library.

    analytics.identify()
    analytics.track()

Run the cli command to consume the queued events:

    send-segment-events --redis-url redis://an-url
    send-segment-events --local  # dev usage
    send-segment-events  # looks for the REDIS_URL env var
