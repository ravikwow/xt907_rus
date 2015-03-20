.class public Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->DEBUG:Z

    .line 55
    sget-boolean v1, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleConnectivityStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 120
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 121
    .local v1, "isConnected":Z
    :goto_0
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "reason":Ljava/lang/String;
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 124
    const-string v4, "MmsSystemEventRcvr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECTIVITY_ACTION received, isConnected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", networkInfo=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 135
    :cond_1
    const-string v3, "MmsSystemEventRcvr"

    const-string v4, "MMS-STATUS - MMS related APN has connected"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "com.motorola.blur.conversation.ACTION_MMS_APN_CONNECTED"

    invoke-static {v3}, Lcom/motorola/messaging/transaction/TransactionManager;->wakeUpService(Ljava/lang/String;)V

    .line 152
    :cond_2
    :goto_2
    return-void

    .line 120
    .end local v1    # "isConnected":Z
    .end local v2    # "reason":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0

    .line 124
    .restart local v1    # "isConnected":Z
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_4
    const-string v3, "null"

    goto :goto_1

    .line 138
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sget v4, Lcom/motorola/messaging/frameworkadapter/net/ConnectivityManagerWrapper;->TYPE_MOBILE_IMS:I

    if-ne v3, v4, :cond_2

    .line 146
    :cond_6
    const-string v3, "MmsSystemEventRcvr"

    const-string v4, "MMS-STATUS - Default APN or IMS APN has connected"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "com.motorola.blur.conversation.ACTION_APN_CHANGED"

    invoke-static {v3}, Lcom/motorola/messaging/transaction/TransactionManager;->wakeUpService(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleDataRoamingChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "enable":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 213
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "com.motorola.blur.datamanager.app.Value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "com.motorola.blur.datamanager.app.Value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 218
    :cond_0
    sget-boolean v2, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 219
    const-string v2, "MmsSystemEventRcvr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - ENABLE_DATA_ROAMING event received, enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_1
    if-eqz v0, :cond_2

    .line 226
    const-string v2, "com.motorola.blur.conversation.ACTION_APN_CHANGED"

    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionManager;->wakeUpService(Ljava/lang/String;)V

    .line 228
    :cond_2
    return-void
.end method

.method private handleSendMMSAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 158
    :cond_0
    sget-boolean v2, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 159
    const-string v2, "MmsSystemEventRcvr"

    const-string v3, "No extra/uri information on intent"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    invoke-static {p1}, Lcom/motorola/messaging/transaction/TransactionManager;->wakeUpServiceWithIntentData(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleServiceStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 171
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 172
    const-string v3, "MmsSystemEventRcvr"

    const-string v4, "No extra information on intent"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v2, "NO SERVICE"

    .line 178
    .local v2, "state":Ljava/lang/String;
    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 179
    const-string v2, "IN SERVICE"

    .line 182
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRoaming()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 184
    .local v1, "roaming":Ljava/lang/Boolean;
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 185
    const-string v3, "MmsSystemEventRcvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - SERVICE_STATE event received, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", roaming indicator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_3
    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 202
    const-string v3, "com.motorola.blur.conversation.ACTION_SERVICE_STATE_ON"

    invoke-static {v3}, Lcom/motorola/messaging/transaction/TransactionManager;->wakeUpService(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_4
    const-string v3, "com.motorola.blur.conversation.ACTION_SERVICE_STATE_OFF"

    invoke-static {v3}, Lcom/motorola/messaging/transaction/TransactionManager;->wakeUpService(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 70
    const-string v3, "MmsSystemEventRcvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() - START, app version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", intent received="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 111
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 112
    const-string v3, "MmsSystemEventRcvr"

    const-string v4, "onReceive() - END"

    :goto_0
    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void

    .line 84
    :cond_2
    :try_start_1
    const-string v3, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    const-string v3, "deleted_contents"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .local v1, "changed":Landroid/net/Uri;
    if-nez v1, :cond_3

    .line 111
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 112
    const-string v3, "MmsSystemEventRcvr"

    const-string v4, "onReceive() - END"

    goto :goto_0

    .line 91
    :cond_3
    :try_start_2
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_4

    .line 92
    const-string v2, "CONTENT_CHANGED_ACTION event received"

    .line 93
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "MmsSystemEventRcvr"

    invoke-static {v3, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/motorola/messaging/pdu/util/PduCache;->getInstance()Lcom/motorola/messaging/pdu/util/PduCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/messaging/pdu/util/PduCache;->purge(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .end local v1    # "changed":Landroid/net/Uri;
    :cond_5
    :goto_1
    sget-boolean v3, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 112
    const-string v3, "MmsSystemEventRcvr"

    const-string v4, "onReceive() - END"

    goto :goto_0

    .line 97
    :cond_6
    :try_start_3
    sget-object v3, Lcom/motorola/messaging/frameworkadapter/telephony/TelephonyIntents;->ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->handleServiceStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 111
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v3

    sget-boolean v4, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->LOCAL_LOG:Z

    if-eqz v4, :cond_7

    .line 112
    const-string v4, "MmsSystemEventRcvr"

    const-string v5, "onReceive() - END"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_7
    throw v3

    .line 100
    .restart local v0    # "action":Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v3, "com.motorola.blur.datamanager.app.ACTION_CHANGE_DATA_ROAMING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->handleDataRoamingChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    :cond_9
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->handleConnectivityStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 106
    :cond_a
    const-string v3, "com.motorola.contracts.messaging.intent.SEND_MMS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    invoke-direct {p0, p2}, Lcom/motorola/messaging/receiver/MmsSystemEventReceiver;->handleSendMMSAction(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
