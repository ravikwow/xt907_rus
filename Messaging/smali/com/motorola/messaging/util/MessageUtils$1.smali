.class final Lcom/motorola/messaging/util/MessageUtils$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$service:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/motorola/messaging/util/MessageUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/messaging/util/MessageUtils$1;->val$service:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/motorola/messaging/util/MessageUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/util/MessageUtils$1;->val$service:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 590
    # getter for: Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/util/MessageUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "MessageUtils"

    const-string v1, "MSG-THREAD END - startService"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    return-void
.end method
