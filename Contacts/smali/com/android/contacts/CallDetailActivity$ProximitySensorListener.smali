.class Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/CallDetailActivity;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$1;-><init>(Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener$2;-><init>(Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/CallDetailActivity;
    .param p2, "x1"    # Lcom/android/contacts/CallDetailActivity$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v2, 0x7f07003b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "blankView":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 215
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 3

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/contacts/CallDetailActivity;

    const v2, 0x7f07003b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "blankView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 206
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 204
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 199
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 3

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 193
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
