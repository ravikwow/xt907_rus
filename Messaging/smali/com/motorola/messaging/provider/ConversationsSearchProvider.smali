.class public Lcom/motorola/messaging/provider/ConversationsSearchProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "ConversationsSearchProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 28
    const-string v0, "com.motorola.messaging.search"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/SearchRecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 29
    return-void
.end method
