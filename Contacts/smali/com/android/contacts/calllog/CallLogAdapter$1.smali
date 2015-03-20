.class Lcom/android/contacts/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 242
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    iget-boolean v3, v3, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    if-eqz v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 247
    .local v2, "layoutLocation":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 248
    const-string v3, "Calling_Kpi_Debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecentCall Call Icon Clicked! layoutLocation[0]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "layoutLocation[1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/calllog/IntentProvider;

    .line 251
    .local v1, "intentProvider":Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v1, :cond_0

    .line 252
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v3, v0, v4}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 254
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    iput-boolean v6, v3, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    goto :goto_0

    .line 246
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
