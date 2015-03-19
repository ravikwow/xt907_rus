.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;
.super Ljava/lang/Object;
.source "BuaMemoryPreference.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;


# direct methods
.method constructor <init>(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    const-string v0, "BuaMemoryPreference"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mClientMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$002(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 98
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V
    invoke-static {v0, v2, v3}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    # setter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mConnectedToService:Z
    invoke-static {v0, v2}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$202(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;Z)Z

    .line 100
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/4 v1, 0x2

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V
    invoke-static {v0, v1, v3}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "calssName"    # Landroid/content/ComponentName;

    .prologue
    .line 106
    const-string v0, "BuaMemoryPreference"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$1;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->mConnectedToService:Z
    invoke-static {v0, v1}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$202(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;Z)Z

    .line 108
    return-void
.end method
