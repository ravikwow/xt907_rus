.class Lcom/motorola/messaging/settings/SummaryListPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "SummaryListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/settings/SummaryListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/settings/SummaryListPreference;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/settings/SummaryListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/messaging/settings/SummaryListPreference$1;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "summary":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/motorola/messaging/settings/SummaryListPreference$1;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    # getter for: Lcom/motorola/messaging/settings/SummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/motorola/messaging/settings/SummaryListPreference;->access$000(Lcom/motorola/messaging/settings/SummaryListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 74
    .local v0, "checkMark":Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/motorola/messaging/settings/SummaryListPreference$1;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    iget-object v4, p0, Lcom/motorola/messaging/settings/SummaryListPreference$1;->this$0:Lcom/motorola/messaging/settings/SummaryListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 80
    :goto_0
    return-object v2

    .line 77
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
