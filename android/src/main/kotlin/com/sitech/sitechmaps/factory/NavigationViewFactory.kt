package com.sitech.sitechmaps.factory

import android.app.Activity
import android.content.Context

import com.sitech.sitechmaps.views.NavigationView
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class NavigationViewFactory(activity:Activity) : PlatformViewFactory(StandardMessageCodec.INSTANCE)  {
    val activity = activity
    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {

        val creationParams = args as Map<String?, Any?>?
        val view  =NavigationView(context,creationParams,viewId,activity)
        return  view
    }

}