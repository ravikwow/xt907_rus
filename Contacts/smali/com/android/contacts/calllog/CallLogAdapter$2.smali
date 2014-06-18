.class Lcom/android/contacts/calllog/CallLogAdapter$2;
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
    .line 229
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$2;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$2;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    iget-boolean v2, v2, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    if-eqz v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/calllog/IntentProvider;

    .line 238
    .local v1, "intentProvider":Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v1, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$2;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z
    invoke-static {}, Lcom/android/contacts/calllog/CallLogAdapter;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentCall Call Icon Clicked! number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$2;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/motorola/contacts/util/MEDialer$DialFrom;->RECENT:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v2, v0, v3}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 243
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$2;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    # getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$2;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    goto :goto_0
.end method
