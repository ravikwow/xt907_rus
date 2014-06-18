.class public Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
.super Landroid/app/DialogFragment;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneDisambiguationDialogFragment"
.end annotation


# instance fields
.field private mCallOrigin:Ljava/lang/String;

.field private mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field private mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonesAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "interactionType"    # Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;
    .param p3, "callOrigin"    # Ljava/lang/String;
    .param p4, "dialFrom"    # Lcom/motorola/contacts/util/MEDialer$DialFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;",
            "Ljava/lang/String;",
            "Lcom/motorola/contacts/util/MEDialer$DialFrom;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;>;"
    new-instance v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;-><init>()V

    .line 230
    .local v1, "fragment":Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "phoneList"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 232
    const-string v2, "interactionType"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 233
    const-string v2, "callOrigin"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "meDialFrom"

    invoke-virtual {p4}, Lcom/motorola/contacts/util/MEDialer$DialFrom;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 236
    # getter for: Lcom/android/contacts/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 237
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 262
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 263
    check-cast v1, Landroid/app/AlertDialog;

    .line 264
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p2, :cond_2

    if-ltz p2, :cond_2

    .line 265
    iget-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    .line 266
    .local v3, "phoneItem":Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    const v5, 0x7f060130

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 267
    .local v2, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    iget-wide v5, v3, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    invoke-static {v0, v5, v6}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v4

    .line 271
    .local v4, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 274
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    iget-object v5, v3, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    iget-object v7, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallOrigin:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    # invokes: Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V
    invoke-static {v0, v5, v6, v7, v8}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->access$200(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    goto :goto_0

    .line 277
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "phoneItem":Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "phoneList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "interactionType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    iput-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "callOrigin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallOrigin:Ljava/lang/String;

    .line 246
    invoke-static {}, Lcom/motorola/contacts/util/MEDialer$DialFrom;->values()[Lcom/motorola/contacts/util/MEDialer$DialFrom;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "meDialFrom"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 248
    new-instance v3, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    iget-object v4, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    invoke-direct {v3, v0, v4, v5}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;)V

    iput-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 249
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 250
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040088

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, "setPrimaryView":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    sget-object v5, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;->SMS:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    if-ne v3, v5, :cond_0

    const v3, 0x7f0b00f9

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_0
    const v3, 0x7f0b00f7

    goto :goto_0
.end method
