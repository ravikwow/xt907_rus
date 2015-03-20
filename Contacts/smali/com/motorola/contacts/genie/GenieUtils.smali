.class public Lcom/motorola/contacts/genie/GenieUtils;
.super Ljava/lang/Object;
.source "GenieUtils.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final QUEST_COMPLETE_DIALOG_MESSAGES:[I

.field private static final QUEST_DIALOG_DISMISSER_BUTTONS:[I

.field private static final QUEST_INCOMPLETE_DIALOG_MESSAGES:[I

.field private static final QUEST_INCOMPLETE_DIALOG_TITLES:[I

.field private static final QUEST_NAVIGATORS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[[I>;>;"
        }
    .end annotation
.end field

.field private static final QUEST_SCREENS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;>;"
        }
    .end annotation
.end field

.field private static final indexProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final launcherActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v7, 0x3

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 29
    const-string v4, "content://com.motorola.genie/quests"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    .line 39
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->launcherActions:Ljava/util/HashMap;

    .line 45
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_SCREENS:Ljava/util/HashMap;

    .line 46
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_NAVIGATORS:Ljava/util/HashMap;

    .line 60
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->launcherActions:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.android.contacts.action.LIST_CONTACTS"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->launcherActions:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "com.android.contacts.action.LIST_CONTACTS"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    .local v2, "people_guide_quest":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v3, "screens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x7f04005d

    aput v6, v5, v9

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_SCREENS:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 82
    .local v1, "calling_guide_quest":I
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "screens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 84
    .restart local v3    # "screens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x7f040059

    aput v6, v5, v9

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x7f04005c

    aput v6, v5, v9

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_SCREENS:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "buttons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[[I>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v10, [[I

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    aput-object v6, v5, v9

    new-array v6, v8, [I

    aput v11, v6, v9

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_NAVIGATORS:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "buttons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[[I>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .restart local v0    # "buttons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[[I>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v8, [[I

    new-array v6, v7, [I

    fill-array-data v6, :array_1

    aput-object v6, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v10, [[I

    new-array v6, v8, [I

    const v7, 0x7f0700f0

    aput v7, v6, v9

    aput-object v6, v5, v9

    new-array v6, v8, [I

    aput v11, v6, v9

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_NAVIGATORS:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-array v4, v10, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_COMPLETE_DIALOG_MESSAGES:[I

    .line 118
    new-array v4, v10, [I

    fill-array-data v4, :array_3

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_DIALOG_DISMISSER_BUTTONS:[I

    .line 125
    new-array v4, v10, [I

    fill-array-data v4, :array_4

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_INCOMPLETE_DIALOG_TITLES:[I

    .line 132
    new-array v4, v10, [I

    fill-array-data v4, :array_5

    sput-object v4, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_INCOMPLETE_DIALOG_MESSAGES:[I

    return-void

    .line 95
    :array_0
    .array-data 4
        0x7f0700f2
        0x7f0700f5
        0x7f0700f6
    .end array-data

    .line 102
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 111
    :array_2
    .array-data 4
        0x7f060000
        0x7f060001
    .end array-data

    .line 118
    :array_3
    .array-data 4
        0x7f0c02a4
        0x7f0c02ac
    .end array-data

    .line 125
    :array_4
    .array-data 4
        -0x1
        0x7f0c02ad
    .end array-data

    .line 132
    :array_5
    .array-data 4
        -0x1
        0x7f0c02ae
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLauncherAction(I)Ljava/lang/String;
    .locals 2
    .param p0, "QUEST"    # I

    .prologue
    .line 145
    sget-object v0, Lcom/motorola/contacts/genie/GenieUtils;->launcherActions:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getQuestCompleteDialogMessage(I)I
    .locals 3
    .param p0, "QUEST"    # I

    .prologue
    .line 137
    sget-object v1, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_COMPLETE_DIALOG_MESSAGES:[I

    sget-object v0, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    return v0
.end method

.method public static getQuestDismisserButton(I)I
    .locals 3
    .param p0, "QUEST"    # I

    .prologue
    .line 141
    sget-object v1, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_DIALOG_DISMISSER_BUTTONS:[I

    sget-object v0, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    return v0
.end method

.method public static getQuestIncompleteDialogMessage(I)I
    .locals 3
    .param p0, "QUEST"    # I

    .prologue
    .line 153
    sget-object v1, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_INCOMPLETE_DIALOG_MESSAGES:[I

    sget-object v0, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    return v0
.end method

.method public static getQuestIncompleteDialogTitle(I)I
    .locals 3
    .param p0, "QUEST"    # I

    .prologue
    .line 149
    sget-object v1, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_INCOMPLETE_DIALOG_TITLES:[I

    sget-object v0, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    return v0
.end method

.method public static getQuestScreenNavigatorButtons(II)[[I
    .locals 4
    .param p0, "ACTIVITY_INFO"    # I
    .param p1, "QUEST"    # I

    .prologue
    .line 182
    sget-object v2, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "quest_index":I
    sget-object v2, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_NAVIGATORS:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 184
    .local v0, "quest_buttons":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[[I>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    return-object v2
.end method

.method public static getQuestScreenViewer(IILandroid/content/Context;)Landroid/widget/ViewFlipper;
    .locals 13
    .param p0, "ACTIVITY_INFO"    # I
    .param p1, "QUEST"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    sget-object v11, Lcom/motorola/contacts/genie/GenieUtils;->indexProvider:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 162
    .local v7, "quest_index":I
    sget-object v11, Lcom/motorola/contacts/genie/GenieUtils;->QUEST_SCREENS:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 163
    .local v8, "quest_screens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 164
    .local v0, "activity_screen_layouts":[I
    new-instance v6, Landroid/widget/ViewFlipper;

    invoke-direct {v6, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 165
    .local v6, "questViewer":Landroid/widget/ViewFlipper;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v5, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 168
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move-object v1, v0

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v9, v1, v2

    .line 169
    .local v9, "res_id":I
    const/4 v11, 0x0

    invoke-virtual {v3, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 170
    .local v10, "screen":Landroid/view/ViewGroup;
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v9    # "res_id":I
    .end local v10    # "screen":Landroid/view/ViewGroup;
    :cond_0
    return-object v6
.end method
