package com.example.blink

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent

class ServiceStartApp : BroadcastReceiver() {
    val ACTION = "android.intent.action.BOOT_COMPLETED"

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action.equals(ACTION)) {
            val i = Intent(context, MainActivity::class.java)
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(i)
        }
    }
}