part of '../comment_page.dart';

class _BuildCommentCard extends StatefulWidget {
  final CommentModel comment;
  final int index;

  const _BuildCommentCard(
      {Key? key, required this.comment, required this.index})
      : super(key: key);

  @override
  State<_BuildCommentCard> createState() => __BuildCommentCardState();
}

class __BuildCommentCardState extends State<_BuildCommentCard> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      margin: const EdgeInsets.only(bottom: Const.space15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: theme.primaryColor)),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: CachedNetworkImageProvider(
                widget.comment.image ?? Assets.profilePhoto,
              ),
            ),
          ),
          const SizedBox(width: Const.space12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${widget.comment.username}  ',
                        style: theme.textTheme.bodyMedium),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.more_horiz, size: Const.space25),
                    ),
                  ],
                ),
                Text(
                  widget.comment.comment ?? '',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: theme.unselectedWidgetColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      timeago
                          .format(widget.comment.createdAt ?? DateTime.now()),
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: theme.unselectedWidgetColor,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          if (_isLiked == false) {
                            setState(() {
                              _isLiked = true;
                            });
                          } else {
                            setState(() {
                              _isLiked = false;
                            });
                          }
                        },
                        child: Icon(
                            _isLiked ? Icons.favorite : Icons.favorite_border,
                            size: 14,
                            color: theme.unselectedWidgetColor)),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
