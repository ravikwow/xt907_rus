.class Lcom/android/contacts/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/contacts/PhoneCallDetailsHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "phoneCallDetailsHelper"    # Lcom/android/contacts/PhoneCallDetailsHelper;
    .param p2, "phoneNumberHelper"    # Lcom/android/contacts/calllog/PhoneNumberHelper;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 48
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 49
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 50
    return-void
.end method

.method private configureCallSecondaryAction(Lcom/android/contacts/calllog/CallLogListItemViews;Lcom/android/contacts/PhoneCallDetails;)V
    .locals 2
    .param p1, "views"    # Lcom/android/contacts/calllog/CallLogListItemViews;
    .param p2, "details"    # Lcom/android/contacts/PhoneCallDetails;

    .prologue
    .line 89
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/android/contacts/calllog/CallLogListItemHelper;->getCallActionDescription(Lcom/android/contacts/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private configurePlaySecondaryAction(Lcom/android/contacts/calllog/CallLogListItemViews;Z)V
    .locals 3
    .param p1, "views"    # Lcom/android/contacts/calllog/CallLogListItemViews;
    .param p2, "isHighlighted"    # Z

    .prologue
    .line 108
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v1, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f0200c1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0209

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    return-void

    .line 109
    :cond_0
    const v0, 0x7f0200c3

    goto :goto_0
.end method

.method private getCallActionDescription(Lcom/android/contacts/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "details"    # Lcom/android/contacts/PhoneCallDetails;

    .prologue
    .line 97
    iget-object v1, p1, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v0, p1, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 103
    .local v0, "recipient":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0210

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v2, p1, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public setPhoneCallDetails(Lcom/android/contacts/calllog/CallLogListItemViews;Lcom/android/contacts/PhoneCallDetails;ZZZ)V
    .locals 10
    .param p1, "views"    # Lcom/android/contacts/calllog/CallLogListItemViews;
    .param p2, "details"    # Lcom/android/contacts/PhoneCallDetails;
    .param p3, "isHighlighted"    # Z
    .param p4, "isVoicemail"    # Z
    .param p5, "isEmergency"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v1, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/contacts/PhoneCallDetailsViews;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/android/contacts/PhoneCallDetailsViews;Lcom/android/contacts/PhoneCallDetails;ZZZ)V

    .line 63
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v1, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 64
    .local v6, "canCall":Z
    iget-object v0, p2, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    aget v0, v0, v8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v7, 0x1

    .line 66
    .local v7, "canPlay":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 68
    invoke-direct {p0, p1, p3}, Lcom/android/contacts/calllog/CallLogListItemHelper;->configurePlaySecondaryAction(Lcom/android/contacts/calllog/CallLogListItemViews;Z)V

    .line 69
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_1
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 84
    return-void

    .end local v7    # "canPlay":Z
    :cond_0
    move v7, v8

    .line 64
    goto :goto_0

    .line 70
    .restart local v7    # "canPlay":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Lcom/android/contacts/calllog/CallLogListItemViews;Lcom/android/contacts/PhoneCallDetails;)V

    .line 73
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
