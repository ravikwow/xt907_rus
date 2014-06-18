.class Lcom/android/contacts/activities/DialtactsActivity$4;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$4;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 405
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$4;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$4;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/list/ContactListFilter;)V

    .line 408
    return v2
.end method
