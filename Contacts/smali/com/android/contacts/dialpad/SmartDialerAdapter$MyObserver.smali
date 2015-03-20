.class Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;
.super Lcom/android/contacts/dialpad/BlurContentObserver;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;)V
    .locals 1

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .line 990
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/BlurContentObserver;-><init>(Landroid/os/Handler;)V

    .line 991
    return-void
.end method


# virtual methods
.method public onChangeRealNeeded(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 994
    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeRealNeeded smartdialer activityPaused = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z
    invoke-static {v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$1900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$500(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 995
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->invalidateCache()V

    .line 996
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z
    invoke-static {v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$1900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 997
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    # invokes: Lcom/android/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->access$1400(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "inputDigits":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 999
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    .line 1004
    .end local v0    # "inputDigits":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1001
    .restart local v0    # "inputDigits":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;->this$0:Lcom/android/contacts/dialpad/SmartDialerAdapter;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    goto :goto_0
.end method
