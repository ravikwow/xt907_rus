.class Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$2;
.super Ljava/lang/Object;
.source "BuaMemoryPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 112
    iput-object p1, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$2;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    const-string v0, "BuaMemoryPreference"

    const-string v1, "mUpdateSpaceTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference$2;->this$0:Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;

    const/4 v1, 0x6

    const/4 v2, 0x0

    # invokes: Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->sendBuaRequest(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;->access$100(Lcom/motorola/settings/deviceinfo/BuaMemoryPreference;ILjava/lang/Object;)V

    .line 117
    return-void
.end method
