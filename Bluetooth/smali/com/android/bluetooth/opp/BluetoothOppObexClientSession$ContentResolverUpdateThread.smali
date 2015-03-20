.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolverUpdateThread"
.end annotation


# instance fields
.field private contentUri:Landroid/net/Uri;

.field private volatile interrupted:Z

.field private mContext1:Landroid/content/Context;

.field private position:J

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cntUri"    # Landroid/net/Uri;
    .param p4, "pos"    # J

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 142
    const-string v0, "BtOpp ContentResolverUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    .line 143
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    .line 144
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    .line 145
    iput-wide p4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->position:J

    .line 146
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    .line 184
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 185
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 156
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 159
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->position:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 168
    const-string v2, "BtOpp ObexClient"

    const-string v3, "ContentResolverUpdateThread was interrupted before sleep !, exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_1
    return-void

    .line 173
    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e1":Ljava/lang/InterruptedException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "ContentResolverUpdateThread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateProgress(J)V
    .locals 0
    .param p1, "pos"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->position:J

    .line 150
    return-void
.end method
