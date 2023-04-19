package com.sitech.sitechmaps.utils

import android.content.Context
import androidx.annotation.NonNull

class PluginUtilities {
    companion object {
        @JvmStatic
        fun getResourceFromContext(context: Context?, resName: String): String {
            if (context == null) {
                throw IllegalArgumentException("null context")
            }
            val stringRes = context.resources.getIdentifier(resName, "string", context.packageName)
            if (stringRes == 0) {
                throw IllegalArgumentException(
                    String.format(
                        "The 'R.string.%s' value it's not defined in your project's resources file.",
                        resName
                    )
                )
            }
            return context.getString(stringRes)
        }
        var distance = 0.00
        var time = 0.00
        var activityStarted=false
        var tripStatus = "pending"

    }}