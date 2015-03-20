.class Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;
.super Ljava/lang/Object;
.source "ContactDetailPartialFieldPickerActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 123
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;->this$0:Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;

    # getter for: Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;->access$400(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1$1;-><init>(Lcom/motorola/contacts/activities/ContactDetailPartialFieldPickerActivity$1;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 119
    return-void
.end method
