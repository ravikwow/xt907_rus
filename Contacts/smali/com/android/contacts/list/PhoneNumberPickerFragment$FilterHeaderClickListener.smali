.class Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneNumberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/PhoneNumberPickerFragment$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    # getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$000(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V

    .line 74
    return-void
.end method
