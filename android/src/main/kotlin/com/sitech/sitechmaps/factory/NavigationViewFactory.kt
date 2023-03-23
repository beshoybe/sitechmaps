package com.sitech.sitechmaps.factory

import android.content.Context

import com.sitech.sitechmaps.views.NavigationView
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class NavigationViewFactory : PlatformViewFactory(StandardMessageCodec.INSTANCE)  {
    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {

        val creationParams = args as Map<String?, Any?>?
        val view  =NavigationView(context,creationParams,viewId)
        return  view
    }

}