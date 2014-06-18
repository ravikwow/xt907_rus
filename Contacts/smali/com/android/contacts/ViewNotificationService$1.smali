.class Lcom/android/contacts/ViewNotificationService$1;
.super Ljava/lang/Object;
.source "ViewNotificationService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewNotificationService;->loadContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewNotificationService;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewNotificationService;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V
    .locals 5
    .param p2, "data"    # Lcom/android/contacts/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;",
            "Lcom/android/contacts/model/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/model/Contact;>;"
    const/4 v4, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v2, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # getter for: Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$200(Lcom/android/contacts/ViewNotificationService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    # setter for: Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/android/contacts/ViewNotificationService;->access$102(Lcom/android/contacts/ViewNotificationService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 97
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # getter for: Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$100(Lcom/android/contacts/ViewNotificationService;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # invokes: Lcom/android/contacts/ViewNotificationService;->loadContact()V
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$300(Lcom/android/contacts/ViewNotificationService;)V

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # setter for: Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z
    invoke-static {v1, v4}, Lcom/android/contacts/ViewNotificationService;->access$402(Lcom/android/contacts/ViewNotificationService;Z)Z

    .line 107
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    invoke-virtual {v1}, Lcom/android/contacts/ViewNotificationService;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/RuntimeException;
    # getter for: Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ViewNotificationService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error stopping service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_2
    # getter for: Lcom/android/contacts/ViewNotificationService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ViewNotificationService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error reseting loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    iget-object v2, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # getter for: Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$200(Lcom/android/contacts/ViewNotificationService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    # setter for: Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;
    invoke-static {v2, v1}, Lcom/android/contacts/ViewNotificationService;->access$102(Lcom/android/contacts/ViewNotificationService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 97
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # getter for: Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$100(Lcom/android/contacts/ViewNotificationService;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # invokes: Lcom/android/contacts/ViewNotificationService;->loadContact()V
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$300(Lcom/android/contacts/ViewNotificationService;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # setter for: Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z
    invoke-static {v1, v4}, Lcom/android/contacts/ViewNotificationService;->access$402(Lcom/android/contacts/ViewNotificationService;Z)Z

    goto :goto_1

    .line 96
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    move-object v2, v1

    iget-object v3, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # getter for: Lcom/android/contacts/ViewNotificationService;->mViewNotifications:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$200(Lcom/android/contacts/ViewNotificationService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    # setter for: Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;
    invoke-static {v3, v1}, Lcom/android/contacts/ViewNotificationService;->access$102(Lcom/android/contacts/ViewNotificationService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 97
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # getter for: Lcom/android/contacts/ViewNotificationService;->mCurrentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$100(Lcom/android/contacts/ViewNotificationService;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # invokes: Lcom/android/contacts/ViewNotificationService;->loadContact()V
    invoke-static {v1}, Lcom/android/contacts/ViewNotificationService;->access$300(Lcom/android/contacts/ViewNotificationService;)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/ViewNotificationService$1;->this$0:Lcom/android/contacts/ViewNotificationService;

    # setter for: Lcom/android/contacts/ViewNotificationService;->mLoadingInProgress:Z
    invoke-static {v1, v4}, Lcom/android/contacts/ViewNotificationService;->access$402(Lcom/android/contacts/ViewNotificationService;Z)Z

    throw v2
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 88
    check-cast p2, Lcom/android/contacts/model/Contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ViewNotificationService$1;->onLoadComplete(Landroid/content/Loader;Lcom/android/contacts/model/Contact;)V

    return-void
.end method
