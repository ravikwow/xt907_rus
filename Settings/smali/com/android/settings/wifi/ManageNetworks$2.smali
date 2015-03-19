.class Lcom/android/settings/wifi/ManageNetworks$2;
.super Ljava/lang/Object;
.source "ManageNetworks.java"

# interfaces
.implements Lcom/android/settings/wifi/TouchInterceptor$StartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ManageNetworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ManageNetworks;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks$2;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startDrag(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks$2;->this$0:Lcom/android/settings/wifi/ManageNetworks;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/ManageNetworks;->access$202(Lcom/android/settings/wifi/ManageNetworks;Z)Z

    .line 232
    monitor-exit p0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
