.class Lcom/android/contacts/CallDetailActivity$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$2;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$2;->this$0:Lcom/android/contacts/CallDetailActivity;

    # invokes: Lcom/android/contacts/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$100(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$2;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
