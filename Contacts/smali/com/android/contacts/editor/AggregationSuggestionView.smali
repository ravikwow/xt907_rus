.class public Lcom/android/contacts/editor/AggregationSuggestionView;
.super Landroid/widget/LinearLayout;
.source "AggregationSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private mLookupKey:Ljava/lang/String;

.field private mNewContact:Z

.field private mRawContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 78
    return-void
.end method

.method private canEditSuggestedContact()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    iget-boolean v8, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    if-nez v8, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v6

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 124
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v8, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 125
    .local v4, "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-object v0, v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    .line 126
    .local v0, "accountType":Ljava/lang/String;
    iget-object v2, v4, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->dataSet:Ljava/lang/String;

    .line 127
    .local v2, "dataSet":Ljava/lang/String;
    if-nez v0, :cond_3

    move v6, v7

    .line 128
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v5

    .line 131
    .local v5, "type":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v5}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 132
    goto :goto_0
.end method


# virtual methods
.method public bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V
    .locals 8
    .param p1, "suggestion"    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .prologue
    .line 85
    iget-wide v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    iput-wide v5, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    .line 86
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    .line 87
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    iput-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 88
    const v5, 0x7f060022

    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 90
    .local v4, "photo":Landroid/widget/ImageView;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 92
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    if-eqz v5, :cond_1

    .line 93
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    array-length v7, v7

    invoke-static {v5, v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :goto_0
    const v5, 0x7f060020

    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, "name":Landroid/widget/TextView;
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v5, 0x7f060021

    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, "data":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 105
    .local v1, "dataText":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 106
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    .line 112
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void

    .line 96
    .end local v0    # "data":Landroid/widget/TextView;
    .end local v1    # "dataText":Ljava/lang/String;
    .end local v2    # "name":Landroid/widget/TextView;
    :cond_1
    const v5, 0x7f02003b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 107
    .restart local v0    # "data":Landroid/widget/TextView;
    .restart local v1    # "dataText":Ljava/lang/String;
    .restart local v2    # "name":Landroid/widget/TextView;
    :cond_2
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 108
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto :goto_1

    .line 109
    :cond_3
    iget-object v5, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 110
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public handleItemClickEvent()Z
    .locals 7

    .prologue
    .line 144
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->canEditSuggestedContact()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onEditAction(Landroid/net/Uri;)V

    .line 154
    :goto_0
    const/4 v3, 0x1

    .line 156
    :goto_1
    return v3

    .line 148
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    .local v2, "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 150
    .local v1, "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-wide v3, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    .end local v1    # "rawContact":Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onJoinAction(JLjava/util/List;)V

    goto :goto_0

    .line 156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .line 141
    return-void
.end method

.method public setNewContact(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    .line 82
    return-void
.end method
